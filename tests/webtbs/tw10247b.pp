{$mode objfpc}{$h+}
type
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
  generic TNode<T> = class
  public
    type
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
<<<<<<< HEAD
=======
=======
>>>>>>> origin/fixes_2_2
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
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/cpstrnew

constructor TNode.Create;
begin
end;

destructor TNode.Destroy;
begin
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  inherited Destroy;
end;


function GetIntNode: TTNodeLongint.TAlias;
begin
  result := 10;
=======
=======
>>>>>>> origin/fixes_2_2
        inherited Destroy;
=======
  inherited Destroy;
>>>>>>> origin/cpstrnew
end;


function GetIntNode: TTNodeLongint.T;
begin
<<<<<<< HEAD
        result := 10;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  result := 10;
>>>>>>> origin/cpstrnew
end;


function GetStringNode: TTNodeString.PT;
begin
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  result := 'abc';
=======
        result := 'abc';
>>>>>>> graemeg/fixes_2_2
=======
        result := 'abc';
>>>>>>> origin/fixes_2_2
=======
  result := 'abc';
>>>>>>> origin/cpstrnew
end;

begin
  writeln(GetIntNode);
  writeln(GetStringNode);
end.

