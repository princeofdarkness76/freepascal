{$mode objfpc}

unit gpriorityqueuetest;

interface

uses fpcunit, testregistry, gpriorityqueue, gutil;

<<<<<<< HEAD
type lesslli=specialize TLess<longint>;
     queuelli=specialize TPriorityQueue<longint,lesslli>;
=======
{type lesslli=specialize TLess<longint>;
     queuelli=specialize TPriorityQueue<longint,lesslli>;}
>>>>>>> graemeg/cpstrnew

type TGPQueueTest = class(TTestCase)
  Published
    procedure QueueTest;
  public
    procedure Setup;override;
  private 
<<<<<<< HEAD
    data:queuelli;
=======
   { data:queuelli;}
>>>>>>> graemeg/cpstrnew
  end;

implementation

procedure TGPQueueTest.QueueTest;
var i,last:longint;
begin
<<<<<<< HEAD
  AssertEquals('Not IsEmpty', true, data.IsEmpty);
=======
{  AssertEquals('Not IsEmpty', true, data.IsEmpty);
>>>>>>> graemeg/cpstrnew
  for i:=0 to 10 do
    data.push(random(10000));
  last:=data.top;
  data.pop;
  for i:=0 to 9 do begin
    AssertEquals('Wrong order', true, data.top<last);
    AssertEquals('Wrong size', 10-i, data.size);
    last:=data.top;
    data.pop;
  end;
<<<<<<< HEAD
  AssertEquals('Not IsEmpty', true, data.IsEmpty);
=======
  AssertEquals('Not IsEmpty', true, data.IsEmpty);}
>>>>>>> graemeg/cpstrnew
end;

procedure TGPQueueTest.Setup;
begin
<<<<<<< HEAD
  data:=queuelli.create;
=======
{  data:=queuelli.create;}
>>>>>>> graemeg/cpstrnew
end;

initialization
  RegisterTest(TGPQueueTest);
end.
