unit buildrtl;

  interface

    uses
      ndk, ndkutils, ddk,
      ctypes, strings,
<<<<<<< HEAD
<<<<<<< HEAD
      rtlconsts, sysconst, sysutils, math, types,
      typinfo, fgl, classes,
=======
=======
>>>>>>> graemeg/cpstrnew
      matrix,
      rtlconsts, sysconst, sysutils, math, types,
      strutils, dateutils, varutils, variants, typinfo, fgl, classes,
      convutils, stdconvs,
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
{$ifdef cpui386}
      mmx, cpu,
{$endif}
{$ifdef cpux86_64}
      cpu,
{$endif}
<<<<<<< HEAD
<<<<<<< HEAD
      charset, cpall, getopts;
=======
      charset, ucomplex, getopts,
      fmtbcd;
>>>>>>> graemeg/cpstrnew
=======
      charset, ucomplex, getopts,
      fmtbcd;
>>>>>>> graemeg/cpstrnew

  implementation

end.
