unit UClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, DBTables, ImgList,
  Menus, ToolWin, ComCtrls, wwclearbuttongroup, wwradiogroup, Mask,
  wwdbedit, ExtCtrls, DBCtrls, wwDialog, wwidlg, Wwdatsrc, Wwtable;

type
  TFClientes = class(TForm)
    DSClientes: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    RGTipCli: TwwRadioGroup;
    RGPago: TwwRadioGroup;
    DBEEntBan: TwwDBEdit;
    DBENumCue: TwwDBEdit;
    MainMenu1: TMainMenu;
    TBClientes: TToolBar;
    Clientes1: TMenuItem;
    Nuevo: TMenuItem;
    Modificar: TMenuItem;
    Eliminar: TMenuItem;
    N1: TMenuItem;
    Guardar: TMenuItem;
    Cancelar: TMenuItem;
    Cerrar: TMenuItem;
    Imagenes: TImageList;
    BNuevo: TToolButton;
    BModificar: TToolButton;
    BEliminar: TToolButton;
    BGuardar: TToolButton;
    BCancelar: TToolButton;
    BCerrar: TToolButton;
    Navegador: TDBNavigator;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    BBuscar: TToolButton;
    ToolButton2: TToolButton;
    Buscar: TMenuItem;
    N2: TMenuItem;
    Cerrar1: TMenuItem;
    TClientes: TwwTable;
    TClientesCifCli: TStringField;
    TClientesNomCli: TStringField;
    TClientesDirCli: TStringField;
    TClientesCpCli: TFloatField;
    TClientesPobCli: TStringField;
    TClientesProCli: TStringField;
    TClientesTel1Cli: TFloatField;
    TClientesTel2Cli: TFloatField;
    TClientesFaxCli: TFloatField;
    TClientesEmaCli: TStringField;
    TClientesWebCli: TStringField;
    TClientesObsCli: TMemoField;
    TClientesTipcli: TStringField;
    TClientesForPagCli: TStringField;
    TClientesNomEntCli: TStringField;
    TClientesEntCueCli: TFloatField;
    TClientesOfiCueCli: TFloatField;
    TClientesDCCueCli: TFloatField;
    TClientesNumCueCli: TFloatField;
    DBEDCCue: TwwDBEdit;
    DBEOfiCli: TwwDBEdit;
    DBEEntCue: TwwDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BImprimir: TToolButton;
    ToolButton3: TToolButton;
    N3: TMenuItem;
    Imprimir: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CerrarClick(Sender: TObject);
    procedure NuevoClick(Sender: TObject);
    procedure ModificarClick(Sender: TObject);
    procedure GuardarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure TClientesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormShow(Sender: TObject);
    procedure RGPagoChange(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure MirarCuenta(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DSClientesStateChange(Sender: TObject);
    procedure BEliminarClick(Sender: TObject);
    procedure TClientesDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TClientesBeforePost(DataSet: TDataSet);
    procedure BImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

uses UPrincipal, UBusCli, UFiltLisCli, UReport;


{$R *.dfm}

procedure TFClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
  FClientes:=nil;
  if FPrincipal.MDIChildCount=1 then
     FPrincipal.TBPrincipal.Visible:=true;
end;

procedure TFClientes.CerrarClick(Sender: TObject);
begin
  close
end;
procedure TFClientes.NuevoClick(Sender: TObject);
begin
      TClientes.Append;
      TClientesTipcli.Value:='P';
      TClientesForPagCli.Value:='C';
end;

procedure TFClientes.ModificarClick(Sender: TObject);
begin
  if not (TClientes.State in [dsEdit,dsInsert]) then
       TClientes.Edit
end;

procedure TFClientes.GuardarClick(Sender: TObject);
begin
  TClientes.Post;
end;

procedure TFClientes.CancelarClick(Sender: TObject);
begin
  TClientes.Cancel;
end;

procedure TFClientes.FormCreate(Sender: TObject);
begin
  TBClientes.Parent:=FPrincipal;
end;

procedure TFClientes.FormActivate(Sender: TObject);
begin
  FPrincipal.TBPrincipal.Visible:=false;
  TBClientes.Visible:=true;
end;

procedure TFClientes.FormDeactivate(Sender: TObject);
begin
 TBClientes.Visible:=false;
end;

procedure TFClientes.TClientesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   if pos('Key violation',E.Message)<>0 then
      raise exception.Create('Ya existe un cliente con ese documento de indentidad.'+#13+
                            'Revise y corrija los datos introducidos.')
   else if pos('Master has detail',E.Message)<>0 then
      raise Exception.Create('No se puede modificar el D.N.I./C.I.F.'+#13+
                            'Existen datos que dependen de este registro.')
   else showMessage(E.Message+#13+'Pongasé en contacto con el servicio técnico.');
end;

procedure TFClientes.FormShow(Sender: TObject);
begin
   if TClientes.RecordCount=0 then
     begin
       Modificar.Enabled:=false;
       BModificar.Enabled:=false;
       Eliminar.Enabled:=false;
       BEliminar.Enabled:=false;
     end;
end;

procedure TFClientes.RGPagoChange(Sender: TObject);
begin
if (TCLientes.State in [dsEdit,dsInsert]) then
    if RGPago.ItemIndex=1 then
      begin
         DBEEntBan.Color:=clWindow;
         DBEEntBan.Enabled:=true;
         DBENumCue.Color:=clWindow;
         DBENumCue.Enabled:=True;
         DBEEntCue.Color:=clWindow;
         DBEEntCue.Enabled:=True;
         DBEDCCue.Color:=clWindow;
         DBEDCCue.Enabled:=True;
         DBEOfiCli.Color:=clWindow;
         DBEOfiCli.Enabled:=True;
      end
    else
      begin
         DBEEntBan.Color:=clSilver;
         DBEEntBan.Enabled:=false;
         TClientesNomEntCli.Value:='';
         DBENumCue.Color:=clSilver;
         DBENumCue.Enabled:=False;
         TClientesNumCueCli.asString:='';
         TClientesDCCueCli.asString:='';
         TClientesOfiCueCli.asString:='';
         TClientesEntCueCli.asString:='';
         DBEEntCue.Color:=clSilver;
         DBEEntCue.Enabled:=false;
         DBEDCCue.Color:=clSilver;
         DBEDCCue.Enabled:=false;
         DBEOfiCli.Color:=clSilver;
         DBEOfiCli.Enabled:=false;
      end;
end;

procedure TFClientes.BuscarClick(Sender: TObject);
begin
 If (TClientes.State in [dsInsert, dsEdit]) then Abort;
 FBusCli:=TFBusCli.Create(Nil);
 If FBusCli.ShowModal=mrOK then
   TClientes.Locate('CifCli',FBusCli.QBusCli.FieldByName('CifCli').AsString,[]);
 FBusCli.Free;
end;

procedure TFClientes.MirarCuenta(DataSet: TDataSet);
begin
  if (TClientesNumCueCli.AsString='') then
    begin
      DBEEntBan.Color:=clSilver;
      DBEEntBan.Enabled:=false;
      DBENumCue.Color:=clSilver;
      DBENumCue.Enabled:=false;
      DBEEntCue.Color:=clSilver;
      DBEEntCue.Enabled:=false;
      DBEDCCue.Color:=clSilver;
      DBEDCCue.Enabled:=false;
      DBEOfiCli.Color:=clSilver;
      DBEOfiCli.Enabled:=false;
    end
  else
    begin
      DBEEntBan.Color:=clWindow;
      DBEEntBan.Enabled:=true;
      DBENumCue.Color:=clWindow;
      DBENumCue.Enabled:=true;
      DBEEntCue.Color:=clWindow;
      DBEEntCue.Enabled:=True;
      DBEDCCue.Color:=clWindow;
      DBEDCCue.Enabled:=True;
      DBEOfiCli.Color:=clWindow;
      DBEOfiCli.Enabled:=True;
    end
end;

procedure TFClientes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var resultado:integer;
begin
  if TClientes.state in [dsedit,dsInsert] then
   begin
    resultado:=MessageDlg('Ha modificado los datos. ¿Quiere guardar los cambios?',
    mtConfirmation,[mbYes,mbNo,mbCancel],0);
    case resultado of
      mrYes: GuardarClick(nil);
      mrNo: CancelarClick(nil);
      mrCancel: CanClose:=false;
    end;
   end;
end;

procedure TFClientes.DSClientesStateChange(Sender: TObject);
begin
 if (TClientes.State in [dsEdit,dsInsert]) then
   begin
      Guardar.Enabled:=true;
      BGuardar.Enabled:=true;
      Cancelar.Enabled:=true;
      BCancelar.Enabled:=true;
      Nuevo.Enabled:=false;
      BNuevo.Enabled:=false;
      Modificar.Enabled:=false;
      BModificar.Enabled:=false;
      Eliminar.Enabled:=false;
      BEliminar.Enabled:=false;
      Buscar.Enabled:=false;
      BBuscar.Enabled:=false;
      BImprimir.Enabled:=False;
      Imprimir.Enabled:=False;
      Navegador.Enabled:=false;
   end
 else if TClientes.State=dsBrowse then
   begin
     Nuevo.Enabled:=true;
     BNuevo.Enabled:=true;
     Guardar.Enabled:=false;
     BGuardar.Enabled:=false;
     Cancelar.Enabled:=false;
     BCancelar.Enabled:=false;
     BModificar.Enabled:=True;
     BEliminar.Enabled:=True;
     BBuscar.Enabled:=True;
     BImprimir.Enabled:=True;
     Modificar.Enabled:=True;
     Eliminar.Enabled:=True;
     Buscar.Enabled:=True;
     Imprimir.Enabled:=True;
     If TClientes.IsEmpty Then
      Begin
       BModificar.Enabled:=True;
       BEliminar.Enabled:=True;
       BBuscar.Enabled:=True;
       BImprimir.Enabled:=True;
       Modificar.Enabled:=True;
       Eliminar.Enabled:=True;
       Buscar.Enabled:=True;
       Imprimir.Enabled:=True;
      End
   end;

end;

procedure TFClientes.BEliminarClick(Sender: TObject);
begin
 if MessageDlg('¿Está seguro de querer eliminar este cliente.?',mtConfirmation,
                [mbOk,mbCancel],0)=mrOk then
    TClientes.Delete;
end;

procedure TFClientes.TClientesDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   if pos('Master has detail',E.Message)<>0 then
     raise Exception.Create('El cliente no puede ser borrado.'+#13+
                            'Hay datos que dependen de este registro.');
end;

procedure TFClientes.TClientesBeforePost(DataSet: TDataSet);
begin
  if TClientesCifCli.Value='' then
      raise exception.Create('El documento de identidad no puede ser nulo.');
  if length(TClientesCifCli.Value)<>9 then
      raise Exception.Create('El documento de identidad debe constar de 9 caracteres.');
  if Length(TClientesNomCli.Value)=0 then
      raise Exception.Create('Debe introducir un nombre para el cliente');
  if (TClientesCpCli.Value<1)or(TClientesCpCli.Value>99999) then
      raise Exception.Create('El Código Postal no es válido');
end;

procedure TFClientes.BImprimirClick(Sender: TObject);
Var Union: String;
begin
 FFiltLisCli:=TFFiltLisCli.Create(Nil);
 If FFiltLisCli.ShowModal=mrOK then
  Begin
   If FReport=Nil then
    FReport:=TFReport.Create(Nil);
   FReport.TClientes.Close;
   FReport.TClientes.SQL.Clear;
   FReport.TClientes.SQL.Add('Select * from Clientes');
   Union:='Where';
   If FFiltLisCli.RGTipo.ItemIndex=1 then
    Begin
     FReport.TClientes.SQL.Add(Union+' TipCli=''P''');
     Union:='And';
    End
   Else if FFiltLisCli.RGTipo.ItemIndex=2 then
    Begin
     FReport.TClientes.SQL.Add(Union+' TipCli=''P''');
     Union:='AND';
    End;
   If FFiltLisCli.RGForPag.ItemIndex=1 then
    Begin
     FReport.TClientes.SQL.Add(Union+' ForPagCli=''C''');
     Union:='AND';
    End
   Else If FFiltLisCli.RGForPag.ItemIndex=1 then
    Begin
     FReport.TClientes.SQL.Add(Union+' ForPagCli=''T''');
     Union:='AND';
    End;
   If Trim(FFiltLisCli.EPoblacion.Text)<>'' then
     FReport.TClientes.Sql.Add(Union+' PobCli Like '''+FFiltLisCli.EPoblacion.Text+'''');
   FReport.TClientes.SQL.Add('ORDER BY NomCli');
   FFiltLisCli.Free;
   FReport.TClientes.Open;
   FReport.ImprimirLisCli;
  End;
end;

end.
