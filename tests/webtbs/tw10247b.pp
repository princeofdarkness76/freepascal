{$mode objfpc}{$h+}
type
<<<<<<< HEAD
  generic TNode<T> = class
  public
    type
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      TAlias = T;
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
      PT = T;
  private
    var
      Data: T;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TTNodeLongint = specialize TNode<Longint>;

  TTNodeString = specialize TNode<String>;
=======
        generic TNode<T> = class
        type public
                PT = T;
        var private
                Data: T;
        public
                constructor Create;
                destructor Destroy; override;
        end;

        TTNodeLongint = specialize TNode<Longint>;

        TTNodeString = specialize TNode<String>;
>>>>>>> graemeg/fixes_2_2

constructor TNode.Create;
begin
end;

destructor TNode.Destroy;
begin
<<<<<<< HEAD
  inherited Destroy;
end;


function GetIntNode: TTNodeLongint.TAlias;
begin
  result := 10;
=======
        inherited Destroy;
end;


function GetIntNode: TTNodeLongint.T;
begin
        result := 10;
>>>>>>> graemeg/fixes_2_2
end;


function GetStringNode: TTNodeString.PT;
begin
<<<<<<< HEAD
  result := 'abc';
=======
        result := 'abc';
>>>>>>> graemeg/fixes_2_2
end;

begin
  writeln(GetIntNode);
  writeln(GetStringNode);
end.

