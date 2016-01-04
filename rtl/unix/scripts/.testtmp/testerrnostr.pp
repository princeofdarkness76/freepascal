
uses
  Dos;

{$i errnostr.inc}
{$i errno.inc}

type
  TNumberString = record
    Number : longint;
    NumberStr : String;
    Str : String;
  end;

const
  ErrStringArray :
   Array [0..sys_errn] of TNumberString= ( 
   (Number :0; NumberStr : '0' ; str : ''),
{$i errnostrlst.inc}
   (Number :-1; NumberStr : ''; str : ''));

var
  ErrorName : string;
  value,i,j : longint;
  verbose : boolean;
  str : string;
function Quote (s : string) : string;
var
  i : longint;
begin
  Quote:='';
  for i:=1 to length(s) do
    if (s[i]='''') then
      Quote:=quote+''''''
    else
      Quote:=quote+s[i];
end;

begin
  if (paramcount=1) and (paramstr(1)='--write') then
    begin
      for i:=0 to sys_errn-1 do
        for j:=0 to sys_errn do
          if (ErrStringArray[j].Number=i) then
            with ErrStringArray[j] do 
        writeln('  ''',Quote(Str), ''' { ',NumberStr, ' ',Number,' }');

      exit;
    end;
  if paramcount < 3 then
    begin
      writeln('Usage: testerrnostr ENAME value "Comment"');
      exit;
    end;
  val(paramstr(2),value);
  if (value>=0) and (value<sys_errn) then
    str:=sys_errlist[value] 
  else
    str:='';
  verbose:=(GetEnv('verbose')<>'0');
  while (pos('''',str)>0) do
    delete(str,pos('''',str),1);
  
  if pos(str,paramstr(3))>0 then
    begin
      if verbose then
        writeln('String for ',paramstr(1),' is "',str,'" contained in ',paramstr(3));
    end
  else if (value>=sys_errn) then
    writeln('String for ',paramstr(1),' index ',value,'not in errnostr.inc, comment is ',paramstr(3))
  else
    begin
      write('String for ',paramstr(1),' index ',value, ' is "',sys_errlist[value],'"');
      writeln(', comment in errno.inc is ',paramstr(3));
    end;
end.
