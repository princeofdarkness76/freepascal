<<<<<<< HEAD
{ %target=win32,win64,wince,darwin,linux,freebsd,solaris,beos,aix,android }
=======
{ %target=win32,win64,wince,darwin,linux,freebsd,solaris,beos}
>>>>>>> graemeg/fixes_2_2
uses
  SysUtils;

var
  t: text;
begin
  { see tw9089b.pp }
  assign(t,'tw9089b.txt');
{$i-}
  reset(t);
{$i+}
  if ioresult<>0 then
    halt(1);
  close(t);
  erase(t);
<<<<<<< HEAD
  writeln('ok');
=======
>>>>>>> graemeg/fixes_2_2
end.
