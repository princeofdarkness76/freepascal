{ %opt=-Mdelphi -Sa }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{ don't run this test when no hardware fpu is available, it would take a lot of time }
{$ifndef FPUSOFT}
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
=======
>>>>>>> origin/cpstrnew
program t_testfhtunit;
uses Sysutils, u_testfhtunit;

begin
    Randomize();
    try 
        if not testfhtunit_test_silent() then
        begin
            //WriteLn('*');
            Halt(1);
        end;
    except on E: Exception do 
        begin
            Halt(2);
        end;
    end;
    Halt(0);
end.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$else FPUSOFT}
begin
end.
{$endif FPUSOFT}

=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
=======
>>>>>>> origin/cpstrnew
