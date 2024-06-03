unit uPedidoItemController;

interface

uses uPedidoItemModel, uDmPedidoItem, System.SysUtils ;

type
  TPedidoItemController = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;
    destructor Destroy; override;
    procedure GravarItemPedido(oPedidoItem :TPedidoItem; out sErro: string);
  end;


implementation

{ TProdutoController }

constructor TPedidoItemController.Create;
begin
  DmPedidoItem := TDmPedidoItem.Create(nil);
end;

destructor TPedidoItemController.Destroy;
begin
  FreeAndNil(DmPedidoItem);
  inherited;
end;

procedure TPedidoItemController.GravarItemPedido(oPedidoItem: TpedidoItem; out sErro: string);
begin
  DmPedidoItem.GravarItemPedido(oPedidoItem, sErro);
end;


end.
