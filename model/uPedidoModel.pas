unit uPedidoModel;

interface

type
  TPedido = class
  private
    FVlTotal    : double;
    FCodCliente : integer;
    FDtEmissao  : Tdatetime;
    FNroPedido  : integer;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property NroPedido   : integer  read FNroPedido  write FNroPedido;
    property DtEmissao   : Tdatetime read FDtEmissao  write FDtEmissao;
    property CodCliente  : integer  read FCodCliente write FCodCliente;
    property VlTotal     : double    read FVlTotal    write FVlTotal;

  end;

implementation

end.
