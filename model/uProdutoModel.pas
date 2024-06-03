unit uProdutoModel;

interface

type
  TProduto = class
  private
    FPrecoVenda: real;
    FDescricao : string;
    Fcodigo    : integer;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property Codigo      : integer read Fcodigo    write Fcodigo;
    property Descricao   : string  read FDescricao write FDescricao;
    property PrecoVenda : real   read FPrecoVenda write FPrecoVenda;

  end;



implementation

end.
