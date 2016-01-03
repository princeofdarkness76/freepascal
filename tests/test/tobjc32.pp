{ %fail }

{ %target=darwin }
<<<<<<< HEAD
{ %cpu=powerpc,powerpc64,i386,x86_64,arm,aarch64 }
=======
{ %cpu=powerpc,powerpc64,i386,x86_64,arm }
>>>>>>> graemeg/cpstrnew

{$mode objfpc}
{$modeswitch objectivec1}

type
  tc = objcclass(NSObject)
    s: ansistring;
  end;

begin
end.
