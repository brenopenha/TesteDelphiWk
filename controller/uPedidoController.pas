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
    procedure ConsultarPedido(oPedido :TPedido );
    procedure ExcluirPedido(NroPedido : integer; out sErro : string);
  end;


implementation

{ TProdutoController }

procedure TPedidoController.ProxNroPedido(oPedido: TPedido);
begin
   DmPedido.ProxNroPedido(oPedido);
end;

procedure TPedidoController.ConsultarPedido(oPedido: TPedido);
begin
  DmPedido.ConsultarPedido(oPedido);
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

procedure TPedidoController.ExcluirPedido(NroPedido: integer;
  out sErro: string);
begin
  DmPedido.ExcluirPedido(NroPedido, sErro);
end;

procedure TPedidoController.GravarPedido(oPedido: Tpedido; out sErro: string);
begin
  DmPedido.GravarPedido(oPedido, sErro);
end;

end.
