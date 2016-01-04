<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{ %skiptarget=win32,win64,wince,os2,emx }
{ This test is only useful if the local codepage is utf-8 which
  usually not the case on windows (and never can be the case on OS/2)
=======
{ %skiptarget=win32,win64,wince }
{ This test is only useful if the local codepage is utf-8 which
  usually not the case on windows
>>>>>>> graemeg/cpstrnew
=======
{ %skiptarget=win32,win64,wince }
{ This test is only usefull if the local codepage is utf-8 which
  usually not the case on windows
>>>>>>> graemeg/fixes_2_2
=======
{ %skiptarget=win32,win64,wince }
{ This test is only useful if the local codepage is utf-8 which
  usually not the case on windows
>>>>>>> origin/fixes_2_2
}
{$codepage utf-8}

{$mode objfpc}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

uses
{$ifdef unix}
  {$ifdef darwin}iosxwstr{$else}cwstring{$endif},
{$endif}
  SysUtils;
=======
=======
>>>>>>> origin/fixes_2_2
=======

>>>>>>> origin/cpstrnew
uses
{$ifdef unix}
  cwstring,
{$endif}
<<<<<<< HEAD
  sysutils;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  SysUtils;
>>>>>>> origin/cpstrnew

{$i+}

var
  t: text;
  w: widestring;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  u: unicodestring;
  a: ansistring;
  wc: widechar;
=======
  a: ansistring;
>>>>>>> graemeg/fixes_2_2
=======
  a: ansistring;
>>>>>>> origin/fixes_2_2
=======
  u: unicodestring;
  a: ansistring;
  wc: widechar;
>>>>>>> origin/cpstrnew

begin
  assign(t,'twide3.txt');
  rewrite(t);
  writeln(t,'łóżka');
  close(t);
  reset(t);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
  
  try
    read(t,wc);
    if wc<>'ł' then
      raise Exception.create('wrong widechar read: '+inttostr(ord(wc))+'<>'+inttostr(ord('ł')));
  except
    close(t);
//    erase(t);
    raise;
  end;
    
  reset(t);
<<<<<<< HEAD
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/cpstrnew
  try
    readln(t,a);
    w:=a;
    if (w<>'łóżka') then
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
      raise Exception.create('wrong ansistring read');
  except
    close(t);
    erase(t);
    raise;
  end;

  reset(t);
  try
    readln(t,w);
    if (w<>'łóżka') then
      raise Exception.create('wrong widestring read');
  except
    close(t);
    erase(t);
    raise;
  end;

  reset(t);
  try
    readln(t,u);
    if (u<>'łóżka') then
      raise Exception.create('wrong unicodestring read');
<<<<<<< HEAD
=======
      raise Exception.create('wrong string read');
>>>>>>> graemeg/fixes_2_2
=======
      raise Exception.create('wrong string read');
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/cpstrnew
  finally
    close(t);
    erase(t);
  end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew

  readstr(u,a);
  if u<>a then
    raise Exception.create('wrong readstr(u,a)');
  readstr(w,a);
  if w<>u then
    raise Exception.create('wrong readstr(w,a)');
<<<<<<< HEAD
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/cpstrnew
end.
