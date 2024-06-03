unit uProdutoController;

interface

uses uProdutoModel, uDmProduto, System.SysUtils ;

type
  TProdutoController = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;
    destructor Destroy; override;
    procedure Consultar(iCodigo : integer; oProduto :TProduto );
  end;


implementation

{ TProdutoController }

procedure TProdutoController.Consultar(iCodigo: integer;
  oProduto: TProduto);
begin
   DmProduto.ConsultarProduto(iCodigo, oProduto);
end;

constructor TProdutoController.Create;
begin
  DmProduto := TDmProduto.Create(nil);
end;

destructor TProdutoController.Destroy;
begin
  FreeAndNil(DmProduto);
  inherited;
end;

end.
