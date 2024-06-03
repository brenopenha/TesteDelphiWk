unit uClienteController;

interface

uses uClienteModel, uDmCliente, System.SysUtils ;

type
  TClienteController = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;
    destructor Destroy; override;
    procedure Consultar(iCodigo : integer; oCliente :TCliente );
  end;


implementation

{ TProdutoController }

procedure TClienteController.Consultar(iCodigo: integer;
  oCliente: TCliente);
begin
   DmCliente.ConsultarCliente(iCodigo, oCliente);
end;

constructor TClienteController.Create;
begin
  DmCliente := TDmCliente.Create(nil);
end;

destructor TClienteController.Destroy;
begin
  FreeAndNil(DmCliente);
  inherited;
end;

end.
