unit UAlbaranes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Wwdatsrc, DBTables, Wwtable, Grids, Wwdbigrd,
  Wwdbgrid, StdCtrls, DBCtrls, wwdbdatetimepicker, Mask, wwdbedit,
  ExtCtrls, ComCtrls, ToolWin, Wwdotdot, Printers;

type
  TFAlbaranes = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    TBAlbaranes: TToolBar;
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
    DBENumAlb: TwwDBEdit;
    DBFecAlb: TwwDBDateTimePicker;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBENombre: TwwDBEdit;
    DBMObservaciones: TDBMemo;
    DBGConceptos: TwwDBGrid;
    DBEBasImp: TwwDBEdit;
    DBEIva: TwwDBEdit;
    DBETotalIva: TwwDBEdit;
    DBETotalAlbaran: TwwDBEdit;
    TAlbaranes: TwwTable;
    DSClientes: TwwDataSource;
    DSAlbaranes: TwwDataSource;
    DSDetalleAlb: TwwDataSource;
    TDetalleAlb: TwwTable;
    MAlbaranes: TMainMenu;
    Acciones1: TMenuItem;
    Nueva: TMenuItem;
    Modificar: TMenuItem;
    Eliminar: TMenuItem;
    N1: TMenuItem;
    Guardar: TMenuItem;
    Cancelar: TMenuItem;
    N2: TMenuItem;
    Cerrar: TMenuItem;
    Buscar1: TMenuItem;
    wwDataSource1: TwwDataSource;
    TGeneral: TwwTable;
    TClientes: TwwTable;
    TClientesCifCli: TStringField;
    TClientesNomCli: TStringField;
    TAlbaranesCifCli: TStringField;
    TAlbaranesFecAlb: TDateField;
    TAlbaranesObsAlb: TMemoField;
    TAlbaranesPorIvaAlb: TFloatField;
    TAlbaranesBasImpAlb: TFloatField;
    TAlbaranesNumLinDet: TFloatField;
    TDetalleAlbNumDetAlb: TFloatField;
    TDetalleAlbConDetAlb: TStringField;
    TDetalleAlbCanDetAlb: TFloatField;
    TDetalleAlbPreUniDetAlb: TFloatField;
    TAlbaranesValIvaAlb: TCurrencyField;
    TAlbaranesTotAlb: TCurrencyField;
    TDetalleAlbTotDetAlb: TCurrencyField;
    TAlbaranesNomCli: TStringField;
    TGeneralConAlb: TFloatField;
    wwDBComboDlg1: TwwDBComboDlg;
    TAlbaranesNumAlb: TStringField;
    TDetalleAlbNumAlb: TStringField;
    TGeneralAnno: TFloatField;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    N3: TMenuItem;
    Imprimir: TMenuItem;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    EAnio: TEdit;
    LAnio: TLabel;
    ToolButton9: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure NuevaClick(Sender: TObject);
    procedure TDetalleAlbCalcFields(DataSet: TDataSet);
    procedure TAlbaranesCalcFields(DataSet: TDataSet);
    procedure TDetalleAlbNewRecord(DataSet: TDataSet);
    procedure TDetalleAlbAfterPost(DataSet: TDataSet);
    procedure TDetalleAlbAfterDelete(DataSet: TDataSet);
    procedure TAlbaranesNewRecord(DataSet: TDataSet);
    procedure GuardarClick(Sender: TObject);
    procedure AlbaranEdit(DataSet: TDataSet);
    procedure CancelarClick(Sender: TObject);
    procedure ModificarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DSAlbaranesStateChange(Sender: TObject);
    procedure CerrarClick(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure Buscar1Click(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure BEliminarClick(Sender: TObject);
    procedure TDetalleAlbUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure TAlbaranesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DBGConceptosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConceptosKeyPress(Sender: TObject; var Key: Char);
    procedure TDetalleAlbBeforePost(DataSet: TDataSet);
    procedure EAnioChange(Sender: TObject);
    procedure EAnioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AnioAlbaranes: string;
    Procedure CalculaTotalAlbaran;
    
  end;

var
  FAlbaranes: TFAlbaranes;
  PDMode: PDevMode;
  
implementation

uses UPrincipal, UBusCli, UBusALb, UReport, UImpAlb;

{$R *.dfm}
Procedure TFAlbaranes.CalculaTotalAlbaran;
Var Marca: TBookMark;
    Total: Double;
Begin
 Try
  TDetalleAlb.DisableControls;
  Marca:=TDetalleAlb.GetBookmark;
  TDetalleAlb.First;
  Total:=0;
  While not TDetalleAlb.Eof do
   Begin
    Total:=Total+TDetalleAlbTotDetAlb.Value;
    TDetalleAlb.Next;
   End;
  TDetalleAlb.GotoBookmark(Marca);
  TDetalleAlb.FreeBookmark(Marca);
  TAlbaranesBasImpAlb.Value:=Total;
 Finally
  TDetalleAlb.EnableControls;
 End;
End;

procedure TFAlbaranes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FPrincipal.TBPrincipal.Visible:=true;
 Action:=CAFree;
 FAlbaranes:=Nil;
end;

procedure TFAlbaranes.FormCreate(Sender: TObject);
 var Anio,Mes,Dia:word;
begin
  FPrincipal.TBPrincipal.Visible:=false;
  TBAlbaranes.Parent:=FPrincipal;
end;

procedure TFAlbaranes.NuevaClick(Sender: TObject);
begin
TAlbaranes.Append;
TDetalleAlb.Append;
end;

procedure TFAlbaranes.TDetalleAlbCalcFields(DataSet: TDataSet);
begin
 TDetalleAlbTotDetAlb.Value:=TDetalleAlbCanDetAlb.Value*TDetalleAlbPreUniDetAlb.Value;
end;

procedure TFAlbaranes.TAlbaranesCalcFields(DataSet: TDataSet);
begin
 TAlbaranesValIvaAlb.Value:=
   (TAlbaranesBasImpAlb.Value * TAlbaranesPorIvaAlb.Value)/100;
 TAlbaranesTotAlb.Value:=TAlbaranesBasImpAlb.Value+TAlbaranesValIvaAlb.Value;
end;

procedure TFAlbaranes.TDetalleAlbNewRecord(DataSet: TDataSet);
begin
 If Not (TAlbaranes.State in [dsInsert, dsEdit]) Then TAlbaranes.Edit;
 TDetalleAlbNumDetAlb.Value:=TAlbaranesNumLinDet.Value+1;
 TAlbaranesNumLinDet.Value:=TAlbaranesNumLinDet.Value+1;
 TDetalleAlbCanDetAlb.Value:=1;
end;

procedure TFAlbaranes.TDetalleAlbAfterPost(DataSet: TDataSet);
begin
CalculaTotalAlbaran;
end;

procedure TFAlbaranes.TDetalleAlbAfterDelete(DataSet: TDataSet);
begin
CalculaTotalAlbaran;
end;

procedure TFAlbaranes.TAlbaranesNewRecord(DataSet: TDataSet);
begin
 TAlbaranesNumAlb.Value:=Format('%7.7u/%2.2u', [TGeneralConAlb.AsInteger+1,TGeneralAnno.AsInteger]);
 TAlbaranesFecAlb.Value:=Date;
 TAlbaranesPorIvaAlb.Value:=0;
end;

procedure TFAlbaranes.GuardarClick(Sender: TObject);
begin
 If (TDetalleAlb.State in [dsInsert, dsEdit]) then
  TDetalleAlb.Post;
 If (TAlbaranes.State in [dsInsert]) then
  Begin
   TAlbaranes.Post;
   TGeneral.Edit;
   TGeneralConAlb.AsString:=Copy(TAlbaranesNumAlb.AsString, 1, Pos('/',TAlbaranesNumAlb.AsString)-1);
   TGeneral.Post;
  End;
 If (TAlbaranes.State in [dsEdit]) then
  TAlbaranes.Post;
 TDetalleAlb.ApplyUpdates;
 TDetalleAlb.CommitUpdates;

end;

procedure TFAlbaranes.AlbaranEdit(DataSet: TDataSet);
begin
 If Not(TAlbaranes.State in [dsInsert, dsEdit]) then Abort;
end;

procedure TFAlbaranes.CancelarClick(Sender: TObject);
begin
 TDetalleAlb.Cancel;
 TDetalleAlb.CancelUpdates;
 TAlbaranes.Cancel;
end;

procedure TFAlbaranes.ModificarClick(Sender: TObject);
begin
 TAlbaranes.Edit;
end;

procedure TFAlbaranes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var Resultado: Integer;
begin
 If (TAlbaranes.State in [dsInsert, dsEdit]) then
  Begin
   Resultado:=MessageDlg('Ha modificado los datos. ¿Quiere guardar los cambios?',
                          mtConfirmation, [mbYes, mbNo, MBCancel], 0);
   Case Resultado of
       mrYes: GuardarClick(Nil);
        mrNo: CancelarClick(Nil);
    mrCancel: CanClose:=False;
   End;
  End;
end;

procedure TFAlbaranes.DSAlbaranesStateChange(Sender: TObject);
begin
 If (TAlbaranes.State in [dsInsert, dsEdit]) then
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
 Else if TAlbaranes.State=dsBrowse then
  Begin
   BGuardar.Enabled:=False; Guardar.Enabled:=False;
   BCancelar.Enabled:=False; Cancelar.Enabled:=False;
   BNuevo.Enabled:=True; Nueva.Enabled:=True;
   if TAlbaranes.RecordCount>0 then
    begin
     BModificar.Enabled:=True; Modificar.Enabled:=True;
     BEliminar.Enabled:=True; Eliminar.Enabled:=True;
     Navegador.Enabled:=True;
    end
   else
    begin
     BModificar.Enabled:=False; Modificar.Enabled:=False;
     BEliminar.Enabled:=False; Eliminar.Enabled:=False;
     Navegador.Enabled:=False;
    end;
  End;
end;

procedure TFAlbaranes.CerrarClick(Sender: TObject);
begin
Close;
end;

procedure TFAlbaranes.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 If not (TAlbaranes.State in [dsInsert, dsEdit]) then Abort;
 FBusCli:=TFBusCli.Create(Nil);
 If FBusCli.ShowModal=mrOK then
   TalbaranesCifCli.Value :=FBusCli.QBusCli.FieldByName('CifCli').AsString;
 FBusCli.Free;

end;

procedure TFAlbaranes.Buscar1Click(Sender: TObject);
begin
 FBusAlb:=TFBusAlb.Create(Nil);
 If FBusAlb.ShowModal=mrOK then
  TAlbaranes.Locate('NumAlb',FBusAlb.QBusAlb.FieldByName('NumAlb').AsString,[]);
 FBusAlb.Free;
end;



procedure TFAlbaranes.ImprimirClick(Sender: TObject);
begin
 if FImpAlb=nil then
   FImpAlb:=TFImpAlb.Create(nil);
 if TAlbaranes.IsEmpty then
   FImpAlb.ENumDesde.Text:=''
 else
   FImpAlb.ENumDesde.Text:=TAlbaranesNumAlb.Value;
 FImpAlb.ShowModal;
end;

procedure TFAlbaranes.BEliminarClick(Sender: TObject);
begin
if MessageDlg('¿Esta seguro de querer eliminar este albarán?',mtConfirmation,[mbOk,mbCancel],0)=mrCancel then abort;
  TDetalleAlb.OnCalcFields:=nil;
  TAlbaranes.OnCalcFields:=nil;
  TDetalleAlb.First;
  TAlbaranes.Edit;
  TDetalleAlb.DisableControls;
  TDetalleAlb.Edit;
  while not TDetalleAlb.Eof do
    begin
      TDetalleAlb.Delete;
    end;
  TDetalleAlb.ApplyUpdates;
  TDetalleAlb.CommitUpdates;
  TAlbaranes.Delete;
  TDetalleAlb.EnableControls;
  TDetalleAlb.OnCalcFields:=FAlbaranes.TDetalleAlbCalcFields;
  TAlbaranes.OnCalcFields:=FAlbaranes.TAlbaranesCalcFields;
end;

procedure TFAlbaranes.TDetalleAlbUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  if not(TAlbaranes.State in [dsEdit,dsInsert])then TAlbaranes.Edit;
  ShowMessage(E.Message+#13+'Pongasé en contacto con el servicio técnico.');

end;

procedure TFAlbaranes.TAlbaranesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   if pos('Key violation',E.Message)<>0 then
      raise exception.Create('Ha ocurrido un error grave.'+#13+
                             'Pongasé en contacto con el servicio técnico de inmediato.')
   else if pos('Field value required',E.Message)<>0 then
        begin
          if pos('CifCli',E.Message)<>0 then
             raise exception.Create('El campo "C.I.F / D.N.I. no puede estar vacío"'+#13+
                             'Corrija el dato antes de guardar.')
          else if pos('FecAlb',E.Message)<>0 then
             raise exception.Create('La fecha del albarán no es correcta.')
          else if pos('PorIvaAlb',E.Message)<>0 then
             raise exception.Create('El porcentaje de I.V.A. no es correcto.')
          else showMessage(E.Message+#13+'Pongasé en contacto con el servicio técnico.');
        end
   else if pos('Master record missing',E.Message)<>0 then
        raise Exception.Create('El C.I.F / D.N.I. introducino no consta en la base de datos.'+#13+
                               'El C.I.F. / D.N.I. debe coincidir con el de un cliente de la base de datos.')
   else if (pos('Minimum validity check',E.Message)<>0)and(pos('PorIvaAlb',E.Message)<>0) then
        raise Exception.Create('El porcentaje de I.V.A. no es correcto.')
   else showMessage(E.Message+#13+'Pongasé en contacto con el servicio técnico.');

end;

procedure TFAlbaranes.DBGConceptosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=Vk_Delete)and(ssCtrl in Shift) then
    begin
       if not TDetalleAlb.IsEmpty then
          TDetalleAlb.Delete;
       Key:=0;
    end;

end;

procedure TFAlbaranes.DBGConceptosKeyPress(Sender: TObject; var Key: Char);
begin
if (DBGConceptos.GetActiveCol in [2,3])and
    ((not(ord(Key) in [ord('0')..ord('9')])) and (Key<>',')and(Key<>'-')) then
     Key:=#0;
end;

procedure TFAlbaranes.TDetalleAlbBeforePost(DataSet: TDataSet);
begin
  TDetalleAlbConDetAlb.value:=Trim(TDetalleAlbConDetAlb.Value);
  if TDetalleAlbConDetAlb.value='' then
     raise Exception.Create('El concepto no puede esta vacío.');
  if TDetalleAlbCanDetAlb.AsString='' then
     raise Exception.Create('Tiene que introducir la cantidad de unidades.');
  if TDetalleAlbPreUniDetAlb.AsString='' then
     raise Exception.Create('Tiene que introducir el precio unitario.');
  if TDetalleAlbCanDetAlb.Value<=0 then
     raise Exception.Create('La cantidad de unidades no es válida.')
end;

procedure TFAlbaranes.EAnioChange(Sender: TObject);
begin
  if (length(Eanio.Text)=4)and(EAnio.Visible) then EAnioExit(nil);
end;

procedure TFAlbaranes.EAnioExit(Sender: TObject);
begin
   Try
     if ((TGeneralAnno.Value+2000)<=StrToInt(EAnio.Text))or
          (length(Eanio.Text)<4) then//si metemos un año maroy o igual al que corre de facturación
       begin
         MessageDlg('Introduzca un año menor que el año acutal de creación de albaranes.'+#13+
         'El año introducido debe contener 4 dígitos.',mtWarning,[mbOk],0);
         EAnio.SetFocus;
       end
     else
       begin
         TAlbaranes.Close;
         AnioAlbaranes:=EAnio.Text;
         TAlbaranes.Filter:='FecAlb >=''01/01/'+AnioAlbaranes+''' and FecAlb<=''31/12/'+AnioAlbaranes+'''';
         DBFecAlb.MaxDate:=0;
         DBFecAlb.MinDate:=0;
         TAlbaranes.Open;
         DBFecAlb.MaxDate:=StrToDate('31/12/'+AnioAlbaranes);
         DBFecAlb.MinDate:=StrToDate('01/01/'+AnioAlbaranes);
         if TAlbaranes.RecordCount=0 then
           begin
             MessageDlg('No existen Albaranes para este año.',mtWarning,[mbOk],0);
             EAnio.SetFocus;
           end;
       end;
   except
     EAnio.SetFocus;
     raise Exception.Create('Inserte un valor numérico válido.');
   end;

end;

procedure TFAlbaranes.FormShow(Sender: TObject);
begin
  if TAlbaranes.Active then TAlbaranes.Close;
  if EsHistoricoAlb then
     Begin
       AnioAlbaranes:=IntToStr(2000+(TGeneralAnno.AsInteger-1));
       Caption:='Albaranes correspondientes al año '+AnioAlbaranes+'.';
       EAnio.Visible:=True;
       LAnio.Visible:=True;
       Nueva.Enabled:=false;
       BNuevo.Enabled:=false;
     end
  else
     begin
       AnioAlbaranes:=IntToStr(2000+(TGeneralAnno.AsInteger));
       Caption:='Albaranes';
     end;
  EAnio.Text:=AnioAlbaranes;
  TAlbaranes.Filter:='FecAlb >=''01/01/'+AnioAlbaranes+''' and FecAlb<=''31/12/'+AnioAlbaranes+'''';
  DBFecAlb.MaxDate:=0;
  DBFecAlb.MinDate:=0;
  TAlbaranes.Open;
  DBFecAlb.MaxDate:=StrToDate('31/12/'+AnioAlbaranes);
  DBFecAlb.MinDate:=StrToDate('01/01/'+AnioAlbaranes);
end;

end.
