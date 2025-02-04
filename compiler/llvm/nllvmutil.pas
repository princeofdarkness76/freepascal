{
    Copyright (c) 20011 by Jonas Maebe

    LLVM version of some node tree helper routines

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
unit nllvmutil;

{$i fpcdefs.inc}

interface

  uses
    globtype,
    aasmdata,ngenutil,
    symtype,symconst,symsym,symdef;


  type
    tllvmnodeutils = class(tnodeutils)
     strict protected
      class procedure insertbsssym(list: tasmlist; sym: tstaticvarsym; size: asizeint; varalign: shortint); override;
     public
      class procedure InsertObjectInfo; override;
    end;


implementation

    uses
      verbose,cutils,globals,fmodule,systems,
      aasmbase,aasmtai,cpubase,llvmbase,aasmllvm,
      symbase,symtable,defutil,
      llvmtype;

  class procedure tllvmnodeutils.insertbsssym(list: tasmlist; sym: tstaticvarsym; size: asizeint; varalign: shortint);
    var
      asmsym: tasmsymbol;
      field1, field2: tsym;
    begin
      if sym.globalasmsym then
        asmsym:=current_asmdata.DefineAsmSymbol(sym.mangledname,AB_GLOBAL,AT_DATA)
      else
        asmsym:=current_asmdata.DefineAsmSymbol(sym.mangledname,AB_LOCAL,AT_DATA);
      if not(vo_is_thread_var in sym.varoptions) then
        list.concat(taillvmdecl.createdef(asmsym,sym.vardef,nil,sec_data,varalign))
      else if tf_section_threadvars in target_info.flags then
        list.concat(taillvmdecl.createtls(asmsym,sym.vardef,varalign))
      else
        list.concat(taillvmdecl.createdef(asmsym,
          get_threadvar_record(sym.vardef,field1,field2),
          nil,sec_data,varalign));
    end;


  class procedure tllvmnodeutils.InsertObjectInfo;
    begin
      inherited;

      { add "type xx = .." statements for all used recorddefs }
      with TLLVMTypeInfo.Create do
        begin
          inserttypeinfo;
          free;
        end;
    end;


begin
  cnodeutils:=tllvmnodeutils;
end.

