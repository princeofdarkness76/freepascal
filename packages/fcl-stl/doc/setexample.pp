uses gset, gutil;

type lesslli=specialize TLess<longint>;
     setlli=specialize TSet<longint, lesslli>;

<<<<<<< HEAD
var data:setlli; i:longint; iterator:setlli.TIterator;
=======
var data:setlli; i:longint; iterator:setlli.PNode;
>>>>>>> graemeg/cpstrnew

begin
  data:=setlli.Create;

  for i:=0 to 10 do
    data.insert(i);

  {Iteration through elements}
  iterator:=data.Min;
<<<<<<< HEAD
  repeat
    writeln(iterator.Data);
  until not iterator.next;
  {Don't forget to destroy iterator}
  iterator.Destroy;

  iterator := data.FindLess(7);
  writeln(iterator.Data);
  iterator.Destroy;
=======
  while iterator<>nil do begin
    writeln(iterator^.Data);
    iterator:=data.next(iterator);
  end;

  writeln(data.FindLess(7)^.Data);
>>>>>>> graemeg/cpstrnew

  data.Destroy;
end.
