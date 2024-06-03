unit uDmProduto;

interface

uses
  System.SysUtils, System.Classes, uDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uProdutoModel;

type
  TDmProduto = class(TDataModule)
    FDQ_ConsDados: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConsultarProduto(iCodigo : integer; oProduto : Tproduto);

  end;

var
  DmProduto: TDmProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmProduto.ConsultarProduto(iCodigo: Integer; oProduto : Tproduto);
begin
   FDQ_ConsDados.Close;
   FDQ_ConsDados.Params[0].AsInteger := iCodigo;
   FDQ_ConsDados.Open;
   if FDQ_ConsDados.RecordCount = 0 then
     oProduto.Codigo := -1
   else
    begin
     //
     with oProduto do
     begin
       Codigo      :=  FDQ_ConsDados.FieldByName('codigo').AsInteger;
       Descricao   :=  FDQ_ConsDados.FieldByName('descricao').AsString;
       PrecoVenda  :=  FDQ_ConsDados.FieldByName('preco_venda').AsFloat;
     end;
    end;
   FDQ_ConsDados.close;
end;

end.
