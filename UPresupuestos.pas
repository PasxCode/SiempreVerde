{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
unit UPresupuestos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, DBTables, Wwtable, StdCtrls, ComCtrls, wwriched,
  wwrichedspell2000, OleServer, Word2000, ComObj, OleCtnrs, Menus, ToolWin,
  Wwdotdot, Mask, wwdbedit, ExtCtrls, DBCtrls, wwdbdatetimepicker;

type
  TFPresupuestos = class(TForm)
    TPresupuestos: TwwTable;
    TPresupuestosNumPres: TFloatField;
    TPresupuestosFecPres: TDateField;
    TPresupuestosCifCli: TStringField;
    TPresupuestosDetPres: TBlobField;
    dsPesupuestos: TwwDataSource;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    wwDBEdit4: TwwDBEdit;
    TClientes: TwwTable;
    TClientesCifCli: TStringField;
    TClientesNomCli: TStringField;
    TPresupuestosNomCli: TStringField;
    Label4: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    TBPresupuestos: TToolBar;
    BNuevo: TToolButton;
    ToolButton1: TToolButton;
    BModificar: TToolButton;
    ToolButton2: TToolButton;
    BEliminar: TToolButton;
    ToolButton3: TToolButton;
    BGuardar: TToolButton;
    ToolButton4: TToolButton;
    BCancelar: TToolButton;
    ToolButton5: TToolButton;
    BCerrar: TToolButton;
    ToolButton6: TToolButton;
    Navegador: TDBNavigator;
    MFacturas: TMainMenu;
    Acciones1: TMenuItem;
    Nueva: TMenuItem;
    Modificar: TMenuItem;
    Eliminar: TMenuItem;
    N1: TMenuItem;
    Guardar: TMenuItem;
    Cancelar: TMenuItem;
    N2: TMenuItem;
    Cerrar: TMenuItem;
    Buscar: TMenuItem;
    TGeneral: TwwTable;
    TGeneralConPre: TFloatField;
    ScrollBox1: TScrollBox;
    OleContainer1: TOleContainer;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure OleContainer1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NuevaClick(Sender: TObject);
    procedure ModificarClick(Sender: TObject);
    procedure TPresupuestosNewRecord(DataSet: TDataSet);
    procedure GuardarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure CerrarClick(Sender: TObject);
    procedure TPresupuestosAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure dsPesupuestosStateChange(Sender: TObject);
    procedure EliminarClick(Sender: TObject);
    procedure TPresupuestosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPresupuestos: TFPresupuestos;

implementation

uses UBusCli, UPrincipal, UBusPres;

{$R *.dfm}

procedure TFPresupuestos.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 If not (TPresupuestos.State in [dsInsert, dsEdit]) then Abort;
 FBusCli:=TFBusCli.Create(Nil);
 If FBusCli.ShowModal=mrOK then
   TPresupuestosCifCli.Value :=FBusCli.QBusCli.FieldByName('CifCli').AsString;
 FBusCli.Free;
end;

procedure TFPresupuestos.OleContainer1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var Blob: TBlobStream;
begin
 Blob:=TBlobStream.Create(TPresupuestosDetPres, bmRead);
 Blob.Seek(0,soFromBeginning);
 If OleContainer1.State=osEmpty then
  OleContainer1.CreateObject('Word.Document', False);
 If Blob.Size<>0 then
  OleContainer1.LoadFromStream(Blob);
 OleContainer1.DoVerb(ovShow );
end;

procedure TFPresupuestos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=CAFree;
 FPrincipal.TBPrincipal.Visible:=true;
 FPresupuestos:=nil; 
end;

procedure TFPresupuestos.NuevaClick(Sender: TObject);
begin
 TPresupuestos.Append;
end;

procedure TFPresupuestos.ModificarClick(Sender: TObject);
begin
 TPresupuestos.Edit;
end;

procedure TFPresupuestos.TPresupuestosNewRecord(DataSet: TDataSet);
begin
 TPresupuestosNumPres.Value:=TGeneralConPre.Value+1;
 TPresupuestosFecPres.Value:=Date;
end;

procedure TFPresupuestos.GuardarClick(Sender: TObject);
Var Blob: TMemoryStream;
Begin
 If OleContainer1.State<>osEmpty then
  Begin
   Blob:=TMemoryStream.Create;
   OleContainer1.SaveToStream(Blob);
   TPresupuestosDetPres.LoadFromStream(Blob);
   Blob.Free;
  End;
 If TPresupuestos.State=dsInsert then
  Begin
   TGeneral.Edit;
   TGeneralConPre.Value:=TPresupuestosNumPres.Value;
   TGeneral.Post;
  End;
 TPresupuestos.Post;
end;

procedure TFPresupuestos.CancelarClick(Sender: TObject);
begin
 TPresupuestos.Cancel;
end;

procedure TFPresupuestos.CerrarClick(Sender: TObject);
begin
 Close;
end;

procedure TFPresupuestos.TPresupuestosAfterScroll(DataSet: TDataSet);
Var Blob: TBlobStream;
begin
 Blob:=TBlobStream.Create(TPresupuestosDetPres, bmRead);
 Blob.Seek(0,soFromBeginning);
 If Blob.Size<>0 then
  Begin
   If OleContainer1.State=osEmpty then
    OleContainer1.CreateObject('Word.Document', False);
   OleContainer1.LoadFromStream(Blob)
  End
 Else
  Begin
    OleContainer1.DestroyObject;
  End;
 Blob.Free;
 OleContainer1.Refresh;
end;

procedure TFPresupuestos.FormCreate(Sender: TObject);
begin
  FPrincipal.TBPrincipal.Visible:=false;
  TBPresupuestos.Parent:=FPrincipal;
end;

procedure TFPresupuestos.BuscarClick(Sender: TObject);
begin
 FBusPres:=TFBusPres.Create(Nil);
 If FBusPres.ShowModal=mrOK then
  TPresupuestos.Locate('NumPres',FBusPres.QBusPres.FieldByName('NumPres').AsInteger,[]);
 FBusPres.Free;
end;

procedure TFPresupuestos.dsPesupuestosStateChange(Sender: TObject);
begin
 If (TPresupuestos.State in [dsInsert, dsEdit]) then
  Begin
   BGuardar.Enabled:=True;
   BCancelar.Enabled:=True;
   Guardar.Enabled:=True;
   Cancelar.Enabled:=True;
   BNuevo.Enabled:=False;
   BModificar.Enabled:=False;
   BEliminar.Enabled:=False;
   Nueva.Enabled:=False;
   Modificar.Enabled:=False;
   Eliminar.Enabled:=False;
   Navegador.Enabled:=False;
  End
 Else if TPresupuestos.State=dsBrowse then
  Begin
   BGuardar.Enabled:=False;
   BCancelar.Enabled:=False;
   Guardar.Enabled:=False;
   Cancelar.Enabled:=False;
   BNuevo.Enabled:=True;
   Nueva.Enabled:=True;
   if not TPresupuestos.IsEmpty then
     begin
       BEliminar.Enabled:=True;
       Eliminar.Enabled:=True;
       Modificar.Enabled:=True;
       BModificar.Enabled:=True;
       Navegador.Enabled:=True;
     end
   else
     begin
       BEliminar.Enabled:=false;
       Eliminar.Enabled:=false;
       Modificar.Enabled:=false;
       BModificar.Enabled:=false;
       Navegador.Enabled:=false;
     end;
  End;

end;

procedure TFPresupuestos.EliminarClick(Sender: TObject);
begin
if MessageDlg('Est� seguro de querer borrar este presupuesto?',
              mtConfirmation,[mbYes,mbCancel],0)=mryes then
   begin
      TPresupuestos.Delete;
      dsPesupuestosStateChange(nil);
   end;
end;

procedure TFPresupuestos.TPresupuestosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   if pos('required',E.Message)<>0 then
        begin
          if pos('CifCli',E.Message)<>0 then
             raise exception.Create('El campo Cliente no puede estar vac�o')
          else if pos('FecFac',E.Message)<>0 then
             raise exception.Create('EL campo fecha no puede estar vacio')
          else if pos('NumPres',E.Message)<>0 then
             raise exception.Create('El Numero de presupuesto no puede estar vacio.')
          else showMessage(E.Message+#13+'Pongas� en contacto con el servicio t�cnico.');
        end
   Else Raise(E);
end;

procedure TFPresupuestos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var Resultado: Integer;
begin
 If (TPresupuestos.State in [dsInsert, dsEdit]) then
  Begin
   Resultado:=MessageDlg('Ha modificado los datos. �Quiere guardar los cambios?',
                          mtConfirmation, [mbYes, mbNo, MBCancel], 0);
   Case Resultado of
       mrYes: GuardarClick(Nil);
        mrNo: CancelarClick(Nil);
    mrCancel: CanClose:=False;
   End;
  End;

end;

end.
