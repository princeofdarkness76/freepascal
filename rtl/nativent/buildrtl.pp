unit buildrtl;

  interface

    uses
      ndk, ndkutils, ddk,
      ctypes, strings,
<<<<<<< HEAD
      rtlconsts, sysconst, sysutils, math, types,
      typinfo, fgl, classes,
=======
      matrix,
      rtlconsts, sysconst, sysutils, math, types,
      strutils, dateutils, varutils, variants, typinfo, fgl, classes,
      convutils, stdconvs,
>>>>>>> graemeg/cpstrnew
{$ifdef cpui386}
      mmx, cpu,
{$endif}
{$ifdef cpux86_64}
      cpu,
{$endif}
<<<<<<< HEAD
      charset, cpall, getopts;
=======
      charset, ucomplex, getopts,
      fmtbcd;
>>>>>>> graemeg/cpstrnew

  implementation

end.
