program Teste_Ped_Venda_MVC_POO;

uses
  Vcl.Forms,
  ufrm_pedvenda in 'ufrm_pedvenda.pas' {frm_pedVenda},
  uProdutoModel in '..\model\uProdutoModel.pas',
  uProdutoController in '..\controller\uProdutoController.pas',
  uDmConexao in '..\dao\uDmConexao.pas' {DmConexao: TDataModule},
  uDmProduto in '..\dao\uDmProduto.pas' {DmProduto: TDataModule},
  uClienteModel in '..\model\uClienteModel.pas',
  uClienteController in '..\controller\uClienteController.pas',
  uDmCliente in '..\dao\uDmCliente.pas' {DmCliente: TDataModule},
  uPedidoModel in '..\model\uPedidoModel.pas',
  uDmPedido in '..\dao\uDmPedido.pas' {DmPedido: TDataModule},
  uPedidoController in '..\controller\uPedidoController.pas',
  uPedidoItemModel in '..\model\uPedidoItemModel.pas',
  uDmPedidoItem in '..\dao\uDmPedidoItem.pas' {DmPedidoItem: TDataModule},
  uPedidoItemController in '..\controller\uPedidoItemController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_pedVenda, frm_pedVenda);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.Run;
end.
