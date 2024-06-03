unit uClienteModel;

interface

type
  TCliente = class
  private
    FUF    : string;
    FCidade: string;
    FNome  : string;
    Fcodigo: integer;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property Codigo      : integer read Fcodigo    write Fcodigo;
    property Nome        : string  read FNome      write FNome;
    property Cidade      : string  read FCidade    write FCidade;
    property UF          : string  read FUF        write FUF;

  end;

implementation

end.
