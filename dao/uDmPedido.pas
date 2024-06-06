unit uDmPedido;

interface

uses
  System.SysUtils, System.Classes, uDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uPedidoModel;

type
  TDmPedido = class(TDataModule)
    FDQ_Incluir: TFDQuery;
    FDQ_ProxNroPed: TFDQuery;
    FDQ_Consultar: TFDQuery;
    FDQ_Excluir: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GravarPedido(oPedido : Tpedido; out sErro : string);
    procedure ConsultarPedido(oPedido : Tpedido);
    procedure ExcluirPedido(NroPedido : integer; out sErro : string );
    procedure ProxNroPedido(oPedido : Tpedido);
  end;

var
  DmPedido: TDmPedido;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmPedido }

procedure TDmPedido.ConsultarPedido(oPedido: Tpedido);
begin
  FDQ_Consultar.Close;
  FDQ_Consultar.Params[0].AsInteger := oPedido.NroPedido;
  FDQ_Consultar.Open;
  //
  if FDQ_Consultar.RecordCount > 0 then
  begin
    with oPedido do
    begin
      DtEmissao  := FDQ_Consultar.FieldByName('dt_emissao').AsDateTime;
      CodCliente := FDQ_Consultar.FieldByName('cod_cliente').AsInteger;
      VlTotal    := FDQ_Consultar.FieldByName('vl_total').AsFloat;
    end;
  end
  else oPedido.NroPedido := -1;
  FDQ_Consultar.Close;
end;

procedure TDmPedido.ExcluirPedido(NroPedido: integer; out sErro: string);
begin
   FDQ_Excluir.Close;
   FDQ_Excluir.Params[0].AsInteger := NroPedido;
   try
     FDQ_Excluir.ExecSQL;
   except on E: Exception do
     begin
       sErro := 'Erro ao excluir o Pedido no. ' + inttostr(NroPedido) + '. '  + E.Message;
     end;
   end;
end;

procedure TDmPedido.GravarPedido(oPedido: Tpedido; out sErro: string);
begin
   FDQ_Incluir.Close;
   FDQ_Incluir.Params[0].AsInteger  := oPedido.NroPedido;
   FDQ_Incluir.Params[1].AsDateTime := oPedido.DtEmissao;
   FDQ_Incluir.Params[2].AsInteger  := oPedido.CodCliente;
   FDQ_Incluir.Params[3].AsFloat    := oPedido.VlTotal;
   try
     FDQ_Incluir.ExecSQL;
   except on E: Exception do
     begin
       sErro := 'Erro ao gravar o Pedido. ' + E.Message;
     end;
   end;
end;

procedure TDmPedido.ProxNroPedido(oPedido: Tpedido);
begin
  FDQ_ProxNroPed.Close;
  FDQ_ProxNroPed.Open;
  oPedido.NroPedido := FDQ_ProxNroPed.FieldByName('prox_numero').AsInteger;
  FDQ_ProxNroPed.Close;
end;

end.
