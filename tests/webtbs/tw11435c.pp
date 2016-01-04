unit tw11435c;

{$MODE ObjFPC}

interface

type
  generic TList<_T>=class(TObject)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
    public
      type
        TCompareFunc = function(const Item1, Item2: _T): Integer;
    public
      var
        data : _T;
<<<<<<< HEAD
=======
=======
>>>>>>> origin/fixes_2_2
    type public
       TCompareFunc = function(const Item1, Item2: _T): Integer;
    var public
      data : _T;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/cpstrnew
    procedure Add(item: _T);
    procedure Sort(compare: TCompareFunc);
  end;

type
  TA = specialize TList<byte>;

implementation

procedure TList.Add(item: _T);
begin
  data:=item;
end;

procedure TList.Sort(compare: TCompareFunc);
begin
  if compare(data, 20) <= 0 then
    halt(1);
end;

end.
