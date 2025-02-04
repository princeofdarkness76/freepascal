{
    Copyright (c) 2003 by Florian Klaempfl

    ARM specific calling conventions

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 ****************************************************************************
}
{ ARM specific calling conventions are handled by this unit
}
unit cpupara;

{$i fpcdefs.inc}

  interface

    uses
       globtype,globals,
       aasmdata,
       cpuinfo,cpubase,cgbase,cgutils,
       symconst,symtype,symdef,parabase,paramgr;

    type
       tcpuparamanager = class(tparamanager)
          function get_volatile_registers_int(calloption : tproccalloption):tcpuregisterset;override;
          function get_volatile_registers_fpu(calloption : tproccalloption):tcpuregisterset;override;
          function get_volatile_registers_mm(calloption : tproccalloption):tcpuregisterset;override;
          function push_addr_param(varspez:tvarspez;def : tdef;calloption : tproccalloption) : boolean;override;
          function ret_in_param(def:tdef;pd:tabstractprocdef):boolean;override;
          procedure getintparaloc(list: TAsmList; pd : tabstractprocdef; nr : longint; var cgpara : tcgpara);override;
          function create_paraloc_info(p : tabstractprocdef; side: tcallercallee):longint;override;
          function create_varargs_paraloc_info(p : tabstractprocdef; varargspara:tvarargsparalist):longint;override;
          function get_funcretloc(p : tabstractprocdef; side: tcallercallee; forcetempdef: tdef): tcgpara;override;
         private
          procedure init_values(p: tabstractprocdef; side: tcallercallee; var curintreg,
            curfloatreg, curmmreg: tsuperregister; var cur_stack_offset: aword;
            var sparesinglereg: tregister);
          function create_paraloc_info_intern(p : tabstractprocdef; side: tcallercallee; paras: tparalist;
            var curintreg, curfloatreg, curmmreg: tsuperregister; var cur_stack_offset: aword; var sparesinglereg: tregister; isvariadic: boolean):longint;
       end;

  implementation

    uses
       verbose,systems,cutils,
       defutil,symsym,symcpu,symtable,
       { PowerPC uses procinfo as well in cpupara, so this should not hurt }
       procinfo;


    function tcpuparamanager.get_volatile_registers_int(calloption : tproccalloption):tcpuregisterset;
      begin
        if (target_info.system<>system_arm_darwin) then
          result:=VOLATILE_INTREGISTERS
        else
          result:=VOLATILE_INTREGISTERS_DARWIN;
      end;


    function tcpuparamanager.get_volatile_registers_fpu(calloption : tproccalloption):tcpuregisterset;
      begin
        result:=VOLATILE_FPUREGISTERS;
      end;


    function tcpuparamanager.get_volatile_registers_mm(calloption: tproccalloption): tcpuregisterset;
      begin
        result:=VOLATILE_MMREGISTERS;
      end;


    procedure tcpuparamanager.getintparaloc(list: TAsmList; pd : tabstractprocdef; nr : longint; var cgpara : tcgpara);
      var
        paraloc : pcgparalocation;
        psym : tparavarsym;
        pdef : tdef;
      begin
        if nr<1 then
          internalerror(2002070801);
        psym:=tparavarsym(pd.paras[nr-1]);
        pdef:=psym.vardef;
        if push_addr_param(psym.varspez,pdef,pd.proccalloption) then
          pdef:=cpointerdef.getreusable_no_free(pdef);
        cgpara.reset;
        cgpara.size:=def_cgsize(pdef);
        cgpara.intsize:=tcgsize2size[cgpara.size];
        cgpara.alignment:=std_param_align;
        cgpara.def:=pdef;
        paraloc:=cgpara.add_location;
        with paraloc^ do
          begin
            def:=pdef;
            size:=def_cgsize(pdef);
            { the four first parameters are passed into registers }
            if nr<=4 then
              begin
                loc:=LOC_REGISTER;
                register:=newreg(R_INTREGISTER,RS_R0+nr-1,R_SUBWHOLE);
              end
            else
              begin
                { the other parameters are passed on the stack }
                loc:=LOC_REFERENCE;
                reference.index:=NR_STACK_POINTER_REG;
                reference.offset:=(nr-5)*4;
              end;
          end;
      end;


    function getparaloc(calloption : tproccalloption; p : tdef; isvariadic: boolean) : tcgloc;
      begin
         { Later, the LOC_REFERENCE is in most cases changed into LOC_REGISTER
           if push_addr_param for the def is true
         }
         case p.typ of
            orddef:
              getparaloc:=LOC_REGISTER;
            floatdef:
              if (target_info.abi = abi_eabihf) and
                 (not isvariadic) then
                getparaloc:=LOC_MMREGISTER
              else if (calloption in [pocall_cdecl,pocall_cppdecl,pocall_softfloat]) or
                 (cs_fp_emulation in current_settings.moduleswitches) or
                 (current_settings.fputype in [fpu_vfpv2,fpu_vfpv3,fpu_vfpv3_d16,fpu_fpv4_s16]) then
                { the ARM eabi also allows passing VFP values via VFP registers,
                  but Mac OS X doesn't seem to do that and linux only does it if
                  built with the "-mfloat-abi=hard" option }
                getparaloc:=LOC_REGISTER
              else
                getparaloc:=LOC_FPUREGISTER;
            enumdef:
              getparaloc:=LOC_REGISTER;
            pointerdef:
              getparaloc:=LOC_REGISTER;
            formaldef:
              getparaloc:=LOC_REGISTER;
            classrefdef:
              getparaloc:=LOC_REGISTER;
            recorddef:
              getparaloc:=LOC_REGISTER;
            objectdef:
              getparaloc:=LOC_REGISTER;
            stringdef:
              if is_shortstring(p) or is_longstring(p) then
                getparaloc:=LOC_REFERENCE
              else
                getparaloc:=LOC_REGISTER;
            procvardef:
              getparaloc:=LOC_REGISTER;
            filedef:
              getparaloc:=LOC_REGISTER;
            arraydef:
              if is_dynamic_array(p) then
                getparaloc:=LOC_REGISTER
              else
                getparaloc:=LOC_REFERENCE;
            setdef:
              if is_smallset(p) then
                getparaloc:=LOC_REGISTER
              else
                getparaloc:=LOC_REFERENCE;
            variantdef:
              getparaloc:=LOC_REGISTER;
            { avoid problems with errornous definitions }
            errordef:
              getparaloc:=LOC_REGISTER;
            else
              internalerror(2002071001);
         end;
      end;


    function tcpuparamanager.push_addr_param(varspez:tvarspez;def : tdef;calloption : tproccalloption) : boolean;
      begin
        result:=false;
        if varspez in [vs_var,vs_out,vs_constref] then
          begin
            result:=true;
            exit;
          end;
        case def.typ of
          objectdef:
            result:=is_object(def) and ((varspez=vs_const) or (def.size=0));
          recorddef:
            { note: should this ever be changed, make sure that const records
                are always passed by reference for calloption=pocall_mwpascal }
            result:=(varspez=vs_const) or (def.size=0);
          variantdef,
          formaldef:
            result:=true;
          arraydef:
            result:=(tarraydef(def).highrange>=tarraydef(def).lowrange) or
                             is_open_array(def) or
                             is_array_of_const(def) or
                             is_array_constructor(def);
          setdef :
            result:=not is_smallset(def);
          stringdef :
            result:=tstringdef(def).stringtype in [st_shortstring,st_longstring];
        end;
      end;


    function tcpuparamanager.ret_in_param(def:tdef;pd:tabstractprocdef):boolean;
      var
        i: longint;
        sym: tsym;
      begin
        if handle_common_ret_in_param(def,pd,result) then
          exit;
        case def.typ of
          recorddef:
            begin
              result:=def.size>4;
              if not result and
                 (target_info.abi in [abi_default,abi_armeb]) then
                begin
                  { in case of the old ARM abi (APCS), a struct is returned in
                    a register only if it is simple. And what is a (non-)simple
                    struct:

                    "A non-simple type is any non-floating-point type of size
                     greater than one word (including structures containing only
                     floating-point fields), and certain single-word structured
                     types."
                       (-- ARM APCS documentation)

                    So only floating point types or more than one word ->
                    definitely non-simple (more than one word is already
                    checked above). This includes unions/variant records with
                    overlaid floating point and integer fields.

                    Smaller than one word struct types are simple if they are
                    "integer-like", and:

                    "A structure is termed integer-like if its size is less than
                    or equal to one word, and the offset of each of its
                    addressable subfields is zero."
                      (-- ARM APCS documentation)

                    An "addressable subfield" is a field of which you can take
                    the address, which in practive means any non-bitfield.
                    In Pascal, there is no way to express the difference that
                    you can have in C between "char" and "int :8". In this
                    context, we use the fake distinction that a type defined
                    inside the record itself (such as "a: 0..255;") indicates
                    a bitpacked field while a field using a different type
                    (such as "a: byte;") is not.
                  }
                  for i:=0 to trecorddef(def).symtable.SymList.count-1 do
                    begin
                      sym:=tsym(trecorddef(def).symtable.SymList[i]);
                      if sym.typ<>fieldvarsym then
                        continue;
                      { bitfield -> ignore }
                      if (trecordsymtable(trecorddef(def).symtable).usefieldalignment=bit_alignment) and
                         (tfieldvarsym(sym).vardef.typ in [orddef,enumdef]) and
                         (tfieldvarsym(sym).vardef.owner.defowner=def) then
                        continue;
                      { all other fields must be at offset zero }
                      if tfieldvarsym(sym).fieldoffset<>0 then
                        begin
                          result:=true;
                          exit;
                        end;
                      { floating point field -> also by reference }
                      if tfieldvarsym(sym).vardef.typ=floatdef then
                        begin
                          result:=true;
                          exit;
                        end;
                    end;
                end;
            end;
          procvardef:
            if not tprocvardef(def).is_addressonly then
              result:=true
            else
              result:=false
          else
            result:=inherited ret_in_param(def,pd);
        end;
      end;


    procedure tcpuparamanager.init_values(p : tabstractprocdef; side: tcallercallee;
      var curintreg, curfloatreg, curmmreg: tsuperregister; var cur_stack_offset: aword; var sparesinglereg: tregister);
      begin
        curintreg:=RS_R0;
        curfloatreg:=RS_F0;
        curmmreg:=RS_D0;

        if (side=calleeside) and (GenerateThumbCode or (pi_estimatestacksize in current_procinfo.flags)) then
          cur_stack_offset:=(p as tcpuprocdef).total_stackframe_size
        else
          cur_stack_offset:=0;
        sparesinglereg := NR_NO;
      end;


    function tcpuparamanager.create_paraloc_info_intern(p : tabstractprocdef; side: tcallercallee; paras: tparalist;
        var curintreg, curfloatreg, curmmreg: tsuperregister; var cur_stack_offset: aword; var sparesinglereg: tregister; isvariadic: boolean):longint;

      var
        nextintreg,nextfloatreg,nextmmreg : tsuperregister;
        paradef : tdef;
        paraloc : pcgparalocation;
        stack_offset : aword;
        hp : tparavarsym;
        loc : tcgloc;
        paracgsize   : tcgsize;
        paralen : longint;
        i : integer;
        firstparaloc: boolean;

      procedure assignintreg;
        begin
          { In case of po_delphi_nested_cc, the parent frame pointer
            is always passed on the stack. }
           if (nextintreg<=RS_R3) and
              (not(vo_is_parentfp in hp.varoptions) or
               not(po_delphi_nested_cc in p.procoptions)) then
             begin
               paraloc^.loc:=LOC_REGISTER;
               paraloc^.register:=newreg(R_INTREGISTER,nextintreg,R_SUBWHOLE);
               inc(nextintreg);
             end
           else
             begin
               paraloc^.loc:=LOC_REFERENCE;
               paraloc^.reference.index:=NR_STACK_POINTER_REG;
               paraloc^.reference.offset:=stack_offset;
               inc(stack_offset,4);
            end;
        end;


      begin
        result:=0;
        nextintreg:=curintreg;
        nextfloatreg:=curfloatreg;
        nextmmreg:=curmmreg;
        stack_offset:=cur_stack_offset;

        for i:=0 to paras.count-1 do
          begin
            hp:=tparavarsym(paras[i]);
            paradef:=hp.vardef;

            hp.paraloc[side].reset;

            { currently only support C-style array of const,
              there should be no location assigned to the vararg array itself }
            if (p.proccalloption in cstylearrayofconst) and
               is_array_of_const(paradef) then
              begin
                paraloc:=hp.paraloc[side].add_location;
                { hack: the paraloc must be valid, but is not actually used }
                paraloc^.loc:=LOC_REGISTER;
                paraloc^.register:=NR_R0;
                paraloc^.size:=OS_ADDR;
                paraloc^.def:=voidpointertype;
                break;
              end;

            if push_addr_param(hp.varspez,paradef,p.proccalloption) then
              begin
                paradef:=cpointerdef.getreusable_no_free(paradef);
                loc:=LOC_REGISTER;
                paracgsize := OS_ADDR;
                paralen := tcgsize2size[OS_ADDR];
              end
            else
              begin
                if not is_special_array(paradef) then
                  paralen := paradef.size
                else
                  paralen := tcgsize2size[def_cgsize(paradef)];
                loc := getparaloc(p.proccalloption,paradef,isvariadic);
                if (paradef.typ in [objectdef,arraydef,recorddef]) and
                  not is_special_array(paradef) and
                  (hp.varspez in [vs_value,vs_const]) then
                  paracgsize := int_cgsize(paralen)
                else
                  begin
                    paracgsize:=def_cgsize(paradef);
                    { for things like formaldef }
                    if (paracgsize=OS_NO) then
                      begin
                        paracgsize:=OS_ADDR;
                        paralen:=tcgsize2size[OS_ADDR];
                        paradef:=voidpointertype;
                      end;
                  end
              end;

             hp.paraloc[side].size:=paracgsize;
             hp.paraloc[side].Alignment:=std_param_align;
             hp.paraloc[side].intsize:=paralen;
             hp.paraloc[side].def:=paradef;
             firstparaloc:=true;

{$ifdef EXTDEBUG}
             if paralen=0 then
               internalerror(200410311);
{$endif EXTDEBUG}
             while paralen>0 do
               begin
                 paraloc:=hp.paraloc[side].add_location;

                 if (loc=LOC_REGISTER) and (paracgsize in [OS_F32,OS_F64,OS_F80]) then
                   case paracgsize of
                     OS_F32:
                       begin
                         paraloc^.size:=OS_32;
                         paraloc^.def:=u32inttype;
                       end;
                     OS_F64:
                       begin
                         paraloc^.size:=OS_32;
                         paraloc^.def:=u32inttype;
                       end;
                     else
                       internalerror(2005082901);
                   end
                 else if (paracgsize in [OS_NO,OS_64,OS_S64]) then
                   begin
                     paraloc^.size:=OS_32;
                     paraloc^.def:=u32inttype;
                   end
                 else
                   begin
                     paraloc^.size:=paracgsize;
                     paraloc^.def:=get_paraloc_def(paradef,paralen,firstparaloc);
                   end;
                 case loc of
                    LOC_REGISTER:
                      begin
                        { align registers for eabi }
                        if (target_info.abi in [abi_eabi,abi_eabihf]) and
                           firstparaloc and
                           (paradef.alignment=8) then
                          begin
                            if (nextintreg in [RS_R1,RS_R3]) then
                              inc(nextintreg)
                            else if nextintreg>RS_R3 then
                              stack_offset:=align(stack_offset,8);
                          end;
                        { this is not abi compliant
                          why? (FK) }
                        if nextintreg<=RS_R3 then
                          begin
                            paraloc^.loc:=LOC_REGISTER;
                            paraloc^.register:=newreg(R_INTREGISTER,nextintreg,R_SUBWHOLE);
                            inc(nextintreg);
                          end
                        else
                          begin
                            { LOC_REFERENCE always contains everything that's left }
                            paraloc^.loc:=LOC_REFERENCE;
                            paraloc^.size:=int_cgsize(paralen);
                            paraloc^.def:=carraydef.getreusable_no_free(u8inttype,paralen);
                            if (side=callerside) then
                              paraloc^.reference.index:=NR_STACK_POINTER_REG;
                            paraloc^.reference.offset:=stack_offset;
                            inc(stack_offset,align(paralen,4));
                            paralen:=0;
                         end;
                      end;
                    LOC_FPUREGISTER:
                      begin
                        if nextfloatreg<=RS_F3 then
                          begin
                            paraloc^.loc:=LOC_FPUREGISTER;
                            paraloc^.register:=newreg(R_FPUREGISTER,nextfloatreg,R_SUBWHOLE);
                            inc(nextfloatreg);
                          end
                        else
                          begin
                            paraloc^.loc:=LOC_REFERENCE;
                            paraloc^.reference.index:=NR_STACK_POINTER_REG;
                            paraloc^.reference.offset:=stack_offset;
                            case paraloc^.size of
                              OS_F32:
                                inc(stack_offset,4);
                              OS_F64:
                                inc(stack_offset,8);
                              OS_F80:
                                inc(stack_offset,10);
                              OS_F128:
                                inc(stack_offset,16);
                              else
                                internalerror(200403201);
                            end;
                          end;
                      end;
                    LOC_MMREGISTER:
                      begin
                        if (nextmmreg<=RS_D7) or
                           ((paraloc^.size = OS_F32) and
                            (sparesinglereg<>NR_NO)) then
                          begin
                            paraloc^.loc:=LOC_MMREGISTER;
                            case paraloc^.size of
                              OS_F32:
                                if sparesinglereg = NR_NO then 
                                  begin     
                                    paraloc^.register:=newreg(R_MMREGISTER,nextmmreg,R_SUBFS);
                                    sparesinglereg:=newreg(R_MMREGISTER,nextmmreg-RS_S0+RS_S1,R_SUBFS);
                                    inc(nextmmreg);
                                  end
                                else
                                  begin
                                    paraloc^.register:=sparesinglereg;
                                    sparesinglereg := NR_NO;
                                  end;
                              OS_F64:
                                begin
                                  paraloc^.register:=newreg(R_MMREGISTER,nextmmreg,R_SUBFD);
                                  inc(nextmmreg);
                                end;
                              else
                                internalerror(2012031601);
                            end;
                          end
                        else
                          begin
                            { once a floating point parameters has been placed
                            on the stack we must not pass any more in vfp regs
                            even if there is a single precision register still
                            free}
                            sparesinglereg := NR_NO;
                            { LOC_REFERENCE always contains everything that's left }
                            paraloc^.loc:=LOC_REFERENCE;
                            paraloc^.size:=int_cgsize(paralen);
                            paraloc^.def:=carraydef.getreusable_no_free(u8inttype,paralen);
                            if (side=callerside) then
                              paraloc^.reference.index:=NR_STACK_POINTER_REG;
                            paraloc^.reference.offset:=stack_offset;
                            inc(stack_offset,align(paralen,4));
                            paralen:=0;
                         end;
                      end;
                    LOC_REFERENCE:
                      begin
                        if push_addr_param(hp.varspez,paradef,p.proccalloption) then
                          begin
                            paraloc^.size:=OS_ADDR;
                            paraloc^.def:=cpointerdef.getreusable_no_free(paradef);
                            assignintreg
                          end
                        else
                          begin
                            { align stack for eabi }
                            if (target_info.abi in [abi_eabi,abi_eabihf]) and
                               firstparaloc and
                               (paradef.alignment=8) then
                              stack_offset:=align(stack_offset,8);

                             paraloc^.size:=paracgsize;
                             paraloc^.def:=paradef;
                             paraloc^.loc:=LOC_REFERENCE;
                             paraloc^.reference.index:=NR_STACK_POINTER_REG;
                             paraloc^.reference.offset:=stack_offset;
                             inc(stack_offset,align(paralen,4));
                             paralen:=0
                          end;
                      end;
                    else
                      internalerror(2002071002);
                 end;
                 if side=calleeside then
                   begin
                     if paraloc^.loc=LOC_REFERENCE then
                       begin
                         paraloc^.reference.index:=current_procinfo.framepointer;
                         if current_procinfo.framepointer=NR_FRAME_POINTER_REG then
                           begin
                             { on non-Darwin, the framepointer contains the value
                               of the stack pointer on entry. On Darwin, the
                               framepointer points to the previously saved
                               framepointer (which is followed only by the saved
                               return address -> framepointer + 4 = stack pointer
                               on entry }
                             if not(target_info.system in systems_darwin) then
                               inc(paraloc^.reference.offset,4)
                             else
                               inc(paraloc^.reference.offset,8);
                           end;
                       end;
                   end;
                 dec(paralen,tcgsize2size[paraloc^.size]);
                 firstparaloc:=false
               end;
          end;
        curintreg:=nextintreg;
        curfloatreg:=nextfloatreg;
        curmmreg:=nextmmreg;
        cur_stack_offset:=stack_offset;
        result:=cur_stack_offset;
      end;


    function  tcpuparamanager.get_funcretloc(p : tabstractprocdef; side: tcallercallee; forcetempdef: tdef): tcgpara;
      var
        paraloc : pcgparalocation;
        retcgsize  : tcgsize;
      begin
         if set_common_funcretloc_info(p,forcetempdef,retcgsize,result) then
           exit;

        paraloc:=result.add_location;
        { Return in FPU register? }
        if result.def.typ=floatdef then
          begin
            if target_info.abi = abi_eabihf then 
              begin
                paraloc^.loc:=LOC_MMREGISTER;
                case retcgsize of
                  OS_64,
                  OS_F64:
                    begin
                      paraloc^.register:=NR_MM_RESULT_REG;
                    end;
                  OS_32,
                  OS_F32:
                    begin
                      paraloc^.register:=NR_S0;
                    end;
                  else
                    internalerror(2012032501);
                end;
                paraloc^.size:=retcgsize;
                paraloc^.def:=result.def;
              end
            else if (p.proccalloption in [pocall_softfloat]) or
               (cs_fp_emulation in current_settings.moduleswitches) or
               (current_settings.fputype in [fpu_vfpv2,fpu_vfpv3,fpu_vfpv3_d16,fpu_fpv4_s16]) then
              begin
                case retcgsize of
                  OS_64,
                  OS_F64:
                    begin
                      paraloc^.loc:=LOC_REGISTER;
                      if target_info.endian = endian_big then
                        paraloc^.register:=NR_FUNCTION_RESULT64_HIGH_REG
                      else
                        paraloc^.register:=NR_FUNCTION_RESULT64_LOW_REG;
                      paraloc^.size:=OS_32;
                      paraloc^.def:=u32inttype;
                      paraloc:=result.add_location;
                      paraloc^.loc:=LOC_REGISTER;
                      if target_info.endian = endian_big then
                        paraloc^.register:=NR_FUNCTION_RESULT64_LOW_REG
                      else
                        paraloc^.register:=NR_FUNCTION_RESULT64_HIGH_REG;
                      paraloc^.size:=OS_32;
                      paraloc^.def:=u32inttype;
                    end;
                  OS_32,
                  OS_F32:
                    begin
                      paraloc^.loc:=LOC_REGISTER;
                      paraloc^.register:=NR_FUNCTION_RETURN_REG;
                      paraloc^.size:=OS_32;
                      paraloc^.def:=u32inttype;
                    end;
                  else
                    internalerror(2005082603);
                end;
              end
            else
              begin
                paraloc^.loc:=LOC_FPUREGISTER;
                paraloc^.register:=NR_FPU_RESULT_REG;
                paraloc^.size:=retcgsize;
                paraloc^.def:=result.def;
              end;
          end
          { Return in register }
        else
          begin
            if retcgsize in [OS_64,OS_S64] then
              begin
                paraloc^.loc:=LOC_REGISTER;
                if target_info.endian = endian_big then
                  paraloc^.register:=NR_FUNCTION_RESULT64_HIGH_REG
                else
                  paraloc^.register:=NR_FUNCTION_RESULT64_LOW_REG;
                paraloc^.size:=OS_32;
                paraloc^.def:=u32inttype;
                paraloc:=result.add_location;
                paraloc^.loc:=LOC_REGISTER;
                if target_info.endian = endian_big then
                  paraloc^.register:=NR_FUNCTION_RESULT64_LOW_REG
                else
                  paraloc^.register:=NR_FUNCTION_RESULT64_HIGH_REG;
                paraloc^.size:=OS_32;
                paraloc^.def:=u32inttype;
              end
            else
              begin
                paraloc^.loc:=LOC_REGISTER;
                paraloc^.register:=NR_FUNCTION_RETURN_REG;
                case result.IntSize of
                  0:
                    begin
                      paraloc^.loc:=LOC_VOID;
                      paraloc^.register:=NR_NO;
                      paraloc^.size:=OS_NO;
                      paraloc^.def:=voidpointertype;
                    end;
                  3:
                    begin
                      paraloc^.size:=OS_32;
                      paraloc^.def:=u32inttype;
                    end;
                  else
                    begin
                      paraloc^.size:=retcgsize;
                      paraloc^.def:=result.def;
                    end;
                end;
              end;
          end;
      end;


    function tcpuparamanager.create_paraloc_info(p : tabstractprocdef; side: tcallercallee):longint;
      var
        cur_stack_offset: aword;
        curintreg, curfloatreg, curmmreg: tsuperregister;
        sparesinglereg:tregister;
      begin
        init_values(p,side,curintreg,curfloatreg,curmmreg,cur_stack_offset,sparesinglereg);

        result:=create_paraloc_info_intern(p,side,p.paras,curintreg,curfloatreg,curmmreg,cur_stack_offset,sparesinglereg,false);

        create_funcretloc_info(p,side);
     end;


    function tcpuparamanager.create_varargs_paraloc_info(p : tabstractprocdef; varargspara:tvarargsparalist):longint;
      var
        cur_stack_offset: aword;
        curintreg, curfloatreg, curmmreg: tsuperregister;
        sparesinglereg:tregister;
      begin
        init_values(p,callerside,curintreg,curfloatreg,curmmreg,cur_stack_offset,sparesinglereg);

        result:=create_paraloc_info_intern(p,callerside,p.paras,curintreg,curfloatreg,curmmreg,cur_stack_offset,sparesinglereg,true);
        if (p.proccalloption in cstylearrayofconst) then
          { just continue loading the parameters in the registers }
          result:=create_paraloc_info_intern(p,callerside,varargspara,curintreg,curfloatreg,curmmreg,cur_stack_offset,sparesinglereg,true)
        else
          internalerror(200410231);
      end;

begin
   paramanager:=tcpuparamanager.create;
end.
