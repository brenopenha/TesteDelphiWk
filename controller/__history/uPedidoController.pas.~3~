unit uPedidoController;

interface

uses uPedidoModel, uDmPedido, System.SysUtils ;

type
  TPedidoController = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;
    destructor Destroy; override;
    procedure ProxNroPedido(oPedido :TPedido );
    procedure GravarPedido(oPedido :Tpedido; out sErro: string);
  end;


implementation

{ TProdutoController }

procedure TPedidoController.ProxNroPedido(oPedido: TPedido);
begin
   DmPedido.ProxNroPedido(oPedido);
end;

constructor TPedidoController.Create;
begin
  DmPedido := TDmPedido.Create(nil);
end;

destructor TPedidoController.Destroy;
begin
  FreeAndNil(DmPedido);
  inherited;
end;

procedure TPedidoController.GravarPedido(oPedido: Tpedido; out sErro: string);
begin
  DmPedido.GravarPedido(oPedido, sErro);
end;

end.
