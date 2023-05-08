unit UGenerales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, DB, Wwdatsrc, DBTables, Wwtable, Menus,
  ComCtrls, ToolWin;

type
  TFGenerales = class(TForm)
    TGeneral: TwwTable;
    DSGeneral: TwwDataSource;
    TGeneralCifEmp: TStringField;
    TGeneralNomEmp: TStringField;
    TGeneralDirEmp: TStringField;
    TGeneralCp: TFloatField;
    TGeneralPobEmp: TStringField;
    TGeneralProEmp: TStringField;
    TGeneralTel1Emp: TFloatField;
    TGeneralTel2Emp: TFloatField;
    TGeneralFaxEmp: TFloatField;
    TGeneralEmaEmp: TStringField;
    TGeneralWeb: TStringField;
    TGeneralAnno: TFloatField;
    TGeneralConFac: TFloatField;
    TGeneralConAlb: TFloatField;
    TGeneralConPre: TFloatField;
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    wwDBEdit11: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEConFac: TwwDBEdit;
    DBEConPre: TwwDBEdit;
    DBEConAlb: TwwDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    MainMenu1: TMainMenu;
    Modificar1: TMenuItem;
    salir: TMenuItem;
    Modificar: TMenuItem;
    Guardar: TMenuItem;
    Cancelar: TMenuItem;
    Label14: TLabel;
    EAnno: TEdit;
    TBGenerales: TToolBar;
    BCancelar: TToolButton;
    BModificar: TToolButton;
    BSalir: TToolButton;
    BGuardar: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure salirClick(Sender: TObject);
    procedure TGeneralAfterOpen(DataSet: TDataSet);
    procedure EAnnoExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ModificarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure GuardarClick(Sender: TObject);
    procedure TGeneralAfterInsert(DataSet: TDataSet);
    procedure DSGeneralStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TGeneralAfterPost(DataSet: TDataSet);
    procedure TGeneralBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGenerales: TFGenerales;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFGenerales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPrincipal.TBPrincipal.Visible:=True;
  Action:=caFree;
  FGenerales:=nil;
end;

procedure TFGenerales.salirClick(Sender: TObject);
begin
close;
end;

procedure TFGenerales.TGeneralAfterOpen(DataSet: TDataSet);
begin
  if TGeneral.RecordCount<1 then
     TGeneral.Append;
  if TGeneralAnno.AsString<>'' then
     EAnno.Text:=IntToStr(2000+StrToInt(TGeneralAnno.AsString));
end;

procedure TFGenerales.EAnnoExit(Sender: TObject);
 var Aux: integer;
begin
  Aux:=StrToInt(EAnno.Text);
  if (TGeneralAnno.AsString='')and ((aux<2000)or(aux>2099)) then
     begin
       MessageDlg('Introduca un año válido.'+#13+'El año debe ser el siguiente al actual.',
       mtWarning,[mbOk],0);
       EAnno.SetFocus;
     end
  else
     begin
       if TGeneral.State in [dsInsert] then
           TGeneralAnno.Value:=Aux mod 100;
     end;
end;

procedure TFGenerales.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var Resultado: Integer;
begin
  if (TGeneral.RecordCount=0) OR (TGeneralCifEmp.AsString='')or(TGeneralNomEmp.AsString='')or(TGeneralDirEmp.AsString='')or
     (TGeneralCp.AsString='')or(TGeneralPobEmp.AsString='')or(TGeneralProEmp.AsString='')or
     (TGeneralAnno.AsString='')or(TGeneralConFac.AsString='')or(TGeneralConAlb.AsString='')or
     (TGeneralConPre.AsString='') then
    Begin
     MessageDlg('Los datos básicos de la empresa no existen o son incorrectos. La aplicación no puede continuar.'
                , mtError, [mbok], 0);
     TGeneral.Cancel;
     Application.terminate;
    End;
  if TGeneral.State in [dsEdit,dsInsert] then
    begin
     Resultado:=MessageDlg('Ha modificado los datos de la empresa. ¿Quiere guardarlos?',
                           mtConfirmation, [mbYes, mbNo, mbCancel], 0);
     Case Resultado of
      mrYes: Guardar.Click;
      mrNo: Cancelar.Click;
      mrCancel: CanClose:=False;
     End;
    end;
end;

procedure TFGenerales.ModificarClick(Sender: TObject);
begin
  TGeneral.Edit;
end;

procedure TFGenerales.CancelarClick(Sender: TObject);
begin
  if TGeneral.State in [dsInsert, dsEdit] then
     TGeneral.Cancel;
end;

procedure TFGenerales.GuardarClick(Sender: TObject);
begin
    if TGeneral.State in [dsInsert, dsEdit] then
     TGeneral.Post;
end;

procedure TFGenerales.TGeneralAfterInsert(DataSet: TDataSet);
  var Anio,Mes,Dia: word;
begin
 DecodeDate(Now,Anio,Mes,Dia);
 EAnno.Text:=IntToStr(Anio);
 EAnno.Enabled:=True;
 TGeneralAnno.value:=Anio mod 100;
 DBEConFac.Enabled:=true;
 DBEConAlb.Enabled:=true;
 DBEConPre.Enabled:=true;
{ TGeneralConFac.value:=0;
 TGeneralConAlb.value:=0;
 TGeneralConPre.Value:=0;}
end;

procedure TFGenerales.DSGeneralStateChange(Sender: TObject);
begin
  if TGeneral.State in [dsEdit,dsInsert] then
    begin
      Modificar.Enabled:=false;
      Guardar.Enabled:=true;
      Cancelar.Enabled:=true;
      BModificar.Enabled:=false;
      BGuardar.Enabled:=true;
      BCancelar.Enabled:=true;
    end
  Else if TGeneral.State in [dsBrowse] then
    begin
      Modificar.Enabled:=true;
      Guardar.Enabled:=false;
      Cancelar.Enabled:=false;
      BModificar.Enabled:=true;
      BGuardar.Enabled:=false;
      BCancelar.Enabled:=false;
    end;
end;

procedure TFGenerales.FormCreate(Sender: TObject);
begin
  FPrincipal.TBPrincipal.Visible:=false;
  TBGenerales.Parent:=FPrincipal;
end;

procedure TFGenerales.TGeneralAfterPost(DataSet: TDataSet);
begin
  FPrincipal.Caption:='Gestión '+TGeneralNomEmp.Value;
end;

procedure TFGenerales.TGeneralBeforePost(DataSet: TDataSet);
begin

  if (TGeneralCifEmp.Value='') then
    raise Exception.Create('Debe introducir el C.I.F. de su empresa.');
  if TGeneralNomEmp.Value='' then
    raise Exception.Create('Debe introducir el nombre de su empreas.');
  if (TGeneralDirEmp.Value='')or(TGeneralCp.Value<0)or(TGeneralPobEmp.Value='')or(TGeneralProEmp.Value='') then
    raise Exception.Create('Los datos referentes a la Dirección, Código postal, Población y Provincia'+#13+
                           'han de estar debidamente cumplimentados.');
  if (TGeneralConFac.value<0)or(TGeneralConFac.AsString='') then
    raise Exception.Create('El contador de facturas no es correcto.');
  if (TGeneralConAlb.value<0)or(TGeneralConAlb.AsString='') then
    raise Exception.Create('El contador de albaranes no es correcto.');
  if (TGeneralConPre.value<0)or(TGeneralConAlb.AsString='') then
    raise Exception.Create('El contador de presupuestos no es correcto.');
end;

end.
