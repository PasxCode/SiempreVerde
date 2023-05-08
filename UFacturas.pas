unit UFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, DBTables, Wwtable,
  ComCtrls, ToolWin, Menus, StdCtrls, Mask, wwdbedit, DBCtrls,
  wwdbdatetimepicker, ExtCtrls, wwdblook, Wwdotdot;

type
  TFFacturas = class(TForm)
    TFacturas: TwwTable;
    DSClientes: TwwDataSource;
    DSFacturas: TwwDataSource;
    TFacturasCifCli: TStringField;
    TFacturasFecFac: TDateField;
    TFacturasObsFac: TMemoField;
    TFacturasPorIvaFac: TFloatField;
    TFacturasBasImpFac: TCurrencyField;
    TFacturasTotFac: TCurrencyField;
    DSDetalleFac: TwwDataSource;
    TDetalleFac: TwwTable;
    MFacturas: TMainMenu;
    Acciones1: TMenuItem;
    Nueva: TMenuItem;
    Modificar: TMenuItem;
    Eliminar: TMenuItem;
    TBFacturas: TToolBar;
    BNuevo: TToolButton;
    BModificar: TToolButton;
    BEliminar: TToolButton;
    DBENumFac: TwwDBEdit;
    DBFecFac: TwwDBDateTimePicker;
    GroupBox1: TGroupBox;
    DBENombre: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBMObservaciones: TDBMemo;
    DBGConceptos: TwwDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEBasImp: TwwDBEdit;
    DBEIva: TwwDBEdit;
    DBETotalIva: TwwDBEdit;
    DBETotalFactura: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    TDetalleFacNumDetFac: TFloatField;
    TDetalleFacConDetFac: TStringField;
    TDetalleFacCanDetFac: TFloatField;
    TDetalleFacPreUniDetFac: TFloatField;
    TDetalleFacTotDetFac: TCurrencyField;
    N1: TMenuItem;
    Guardar: TMenuItem;
    Cancelar: TMenuItem;
    BGuardar: TToolButton;
    BCancelar: TToolButton;
    BCerrar: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Navegador: TDBNavigator;
    wwDataSource1: TwwDataSource;
    TGeneral: TwwTable;
    TGeneralConFac: TFloatField;
    TFacturasNumLinDet: TFloatField;
    TFacturasValIvaFac: TCurrencyField;
    TClientes: TwwTable;
    TClientesCifCli: TStringField;
    TClientesNomCli: TStringField;
    TFacturasNomCli: TStringField;
    N2: TMenuItem;
    Cerrar: TMenuItem;
    Buscar: TMenuItem;
    ECifCli: TwwDBComboDlg;
    TFacturasNumFac: TStringField;
    TDetalleFacNumFac: TStringField;
    TGeneralAnno: TFloatField;
    BBuscar: TToolButton;
    BImprimir: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    N3: TMenuItem;
    Imprimir: TMenuItem;
    TFacturasEstFac: TStringField;
    LEstado: TLabel;
    LAnio: TLabel;
    EAnio: TEdit;
    ToolButton8: TToolButton;
    ToolButton6: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NuevaClick(Sender: TObject);
    procedure TDetalleFacCalcFields(DataSet: TDataSet);
    procedure TFacturasCalcFields(DataSet: TDataSet);
    procedure TDetalleFacNewRecord(DataSet: TDataSet);
    procedure TDetalleFacAfterPost(DataSet: TDataSet);
    procedure TDetalleFacAfterDelete(DataSet: TDataSet);
    procedure TFacturasNewRecord(DataSet: TDataSet);
    procedure GuardarClick(Sender: TObject);
    procedure FacturaEdit(DataSet: TDataSet);
    procedure CancelarClick(Sender: TObject);
    procedure ModificarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DSFacturasStateChange(Sender: TObject);
    procedure CerrarClick(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure ECifCliCustomDlg(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure TFacturasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure BEliminarClick(Sender: TObject);
    procedure TFacturasAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EAnioExit(Sender: TObject);
    procedure Habilitar(Nuev,Modi,Elim,Guar,Canc,Busc,Impr,Nave:boolean);
    procedure EAnioChange(Sender: TObject);
    procedure TDetalleFacUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure DBGConceptosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConceptosKeyPress(Sender: TObject; var Key: Char);
    procedure TDetalleFacBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    AnioFacturacion: String;
    Procedure CalculaTotalFactura;
  end;

var
  FFacturas: TFFacturas;
implementation

uses UPrincipal, UBusFac, UBusCli, UReport, UImpFac;

{$R *.dfm}

procedure TFFacturas.Habilitar(Nuev,Modi,Elim,Guar,Canc,Busc,Impr,Nave:boolean);
begin
  Nueva.Enabled:=Nuev;
  BNuevo.Enabled:=Nuev;
  Modificar.Enabled:=Modi;
  BModificar.Enabled:=Modi;
  Eliminar.Enabled:=Elim;
  BEliminar.Enabled:=Elim;
  Guardar.Enabled:=Guar;
  BGuardar.Enabled:=Guar;
  Cancelar.Enabled:=Canc;
  BCancelar.Enabled:=Canc;
  Buscar.Enabled:=Busc;
  BBuscar.Enabled:=Busc;
  Imprimir.Enabled:=Impr;
  BImprimir.Enabled:=Impr;
  Navegador.Enabled:=Nave;
end;
Procedure TFFacturas.CalculaTotalFactura;
Var Marca: TBookMark;
    Total: Double;
Begin
 Try
  TDetalleFac.DisableControls;
  Marca:=TDetalleFac.GetBookmark;
  TDetalleFac.First;
  Total:=0;
  While not TDetalleFac.Eof do
   Begin
    Total:=Total+TDetalleFacTotDetFac.Value;
    TDetalleFac.Next;
   End;
  TDetalleFac.GotoBookmark(Marca);
  TDetalleFac.FreeBookmark(Marca);
  TFacturasBasImpFac.Value:=Total;
 Finally
  TDetalleFac.EnableControls;
 End;
End;

procedure TFFacturas.FormCreate(Sender: TObject);
begin
  FPrincipal.TBPrincipal.Visible:=false;
  TBFacturas.Parent:=FPrincipal;
end;

procedure TFFacturas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FPrincipal.TBPrincipal.Visible:=true;
 Action:=CAFree;
 FFacturas:=Nil;
end;

procedure TFFacturas.NuevaClick(Sender: TObject);
begin
 TFacturas.Append;
 LEstado.Caption:='';
 TDetalleFac.Append;
end;

procedure TFFacturas.TDetalleFacCalcFields(DataSet: TDataSet);
begin
 TDetalleFacTotDetFac.Value:=TDetalleFacCanDetFac.Value*TDetalleFacPreUniDetFac.Value;
end;

procedure TFFacturas.TFacturasCalcFields(DataSet: TDataSet);
begin
 TFacturasValIvaFac.Value:=
   (TFacturasBasImpFac.Value * TFacturasPorIvaFac.Value)/100;
 TFacturasTotFac.Value:=TFacturasBasImpFac.Value+TFacturasValIvaFac.Value;
end;

procedure TFFacturas.TDetalleFacNewRecord(DataSet: TDataSet);
begin
 If Not (TFacturas.State in [dsInsert, dsEdit]) Then TFacturas.Edit;
 TDetalleFacNumDetFac.Value:=TFacturasNumLinDet.Value+1;
 TFacturasNumLinDet.Value:=TFacturasNumLinDet.Value+1;
 TDetalleFacCanDetFac.value:=1;
end;

procedure TFFacturas.TDetalleFacAfterPost(DataSet: TDataSet);
begin
 CalculaTotalFactura;
end;

procedure TFFacturas.TDetalleFacAfterDelete(DataSet: TDataSet);
begin
 CalculaTotalFactura;
end;

procedure TFFacturas.TFacturasNewRecord(DataSet: TDataSet);
begin
 TFacturasNumFac.Value:=Format('%7.7u/%2.2u', [TGeneralConFac.AsInteger+1,TGeneralAnno.AsInteger]);
 TFacturasFecFac.Value:=Date;
 TFacturasPorIvaFac.Value:=16;
end;

procedure TFFacturas.GuardarClick(Sender: TObject);
begin
 If (TDetalleFac.State in [dsInsert, dsEdit]) then
   TDetalleFac.Post;
 If (TFacturas.State in [dsInsert]) then
  Begin
   TFacturas.Post;
   TGeneral.Edit;
   TGeneralConFac.AsString:=Copy(TFacturasNumFac.AsString, 1, Pos('/',TFacturasNumFac.AsString)-1);
   TGeneral.Post;
  End;
 If (TFacturas.State in [dsEdit]) then TFacturas.Post;
 TDetalleFac.ApplyUpdates;
 TDetalleFac.CommitUpdates;

end;

procedure TFFacturas.FacturaEdit(DataSet: TDataSet);
begin
 If Not(TFacturas.State in [dsInsert, dsEdit]) then Abort;
end;

procedure TFFacturas.CancelarClick(Sender: TObject);
begin
 TDetalleFac.Cancel;
 TDetalleFac.CancelUpdates;
 TFacturas.Cancel;
 TDetalleFac.Close;
 TDetalleFac.Open;
end;

procedure TFFacturas.ModificarClick(Sender: TObject);
begin
 TFacturas.Edit;
end;

procedure TFFacturas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var Resultado: Integer;
begin
 If (TFacturas.State in [dsInsert, dsEdit]) then
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

procedure TFFacturas.DSFacturasStateChange(Sender: TObject);
begin
if TFacturas.Active then
 If (TFacturas.State in [dsInsert, dsEdit]) then
     begin
       EAnio.Visible:=false;
       LAnio.Visible:=false;
       Habilitar(false,false,false,true,true,false,false,false)
     end
 Else
   begin
     if not EsHistoricoFac then
       begin
         if TFacturas.RecordCount>0 then
           begin
              if ((TFacturasEstFac.Value<>'A')and(TFacturasEstFac.Value<>'B')) then
                  Habilitar(true,true,true,false,false,true,true,true);
              if ((TFacturasEstFac.Value='A')or(TFacturasEstFac.Value='B')) then
                  Habilitar(true,false,false,false,false,true,true,true);
           end;
         if TFacturas.RecordCount=0 then
             Habilitar(true,false,false,false,false,false,false,false);
       end;

     if EsHistoricoFac then
       begin
         EAnio.Visible:=True;
         LAnio.Visible:=True;
         if TFacturas.RecordCount>0 then
           begin
              if ((TFacturasEstFac.Value<>'A')and(TFacturasEstFac.Value<>'B')) then
                  Habilitar(false,true,true,false,false,true,true,true);
              if ((TFacturasEstFac.Value='A')or(TFacturasEstFac.Value='B')) then
                  Habilitar(false,false,false,false,false,true,true,true);
           end;
         if TFacturas.RecordCount=0 then
             Habilitar(false,false,false,false,false,false,false,false);
       end;
   end; //del else principal.
end;

procedure TFFacturas.CerrarClick(Sender: TObject);
begin
 Close;
end;

procedure TFFacturas.BuscarClick(Sender: TObject);
begin
 FBusFac:=TFBusFac.Create(Nil);
 If FBusFac.ShowModal=mrOK then
  TFacturas.Locate('NumFac',FBusFac.QBusFac.FieldByName('NumFac').AsString,[]);
 FBusFac.Free;
end;

procedure TFFacturas.ECifCliCustomDlg(Sender: TObject);
begin
 If not (TFacturas.State in [dsInsert, dsEdit]) then Abort;
 FBusCli:=TFBusCli.Create(Nil);
 If FBusCli.ShowModal=mrOK then
   TFacturasCifCli.Value :=FBusCli.QBusCli.FieldByName('CifCli').AsString;
 FBusCli.Free;
end;

procedure TFFacturas.BImprimirClick(Sender: TObject);
begin
 if FImpFac=nil then
   FImpFac:=TFImpFac.Create(nil);
 if TFacturas.IsEmpty then
   FImpFac.ENumDesde.Text:=''
 else
   FImpFac.ENumDesde.Text:=TFacturasNumFac.Value;
 FImpFac.ShowModal;
end;

procedure TFFacturas.TFacturasPostError(DataSet: TDataSet;
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
          else if pos('FecFac',E.Message)<>0 then
             raise exception.Create('La fecha de la factura no es correcta.')
          else if pos('PorIvaFac',E.Message)<>0 then
             raise exception.Create('El porcentaje de I.V.A. no es correcto.')
          else showMessage(E.Message+#13+'Pongasé en contacto con el servicio técnico.');
        end
   else if pos('Master record missing',E.Message)<>0 then
        raise Exception.Create('El C.I.F / D.N.I. introducino no consta en la base de datos.'+#13+
                               'El C.I.F. / D.N.I. debe coincidir con el de un cliente de la base de datos.')
   else if (pos('Minimum validity check',E.Message)<>0)and(pos('PorIvaFac',E.Message)<>0) then
        raise Exception.Create('El porcentaje de I.V.A. no es correcto.')
   else showMessage(E.Message+#13+'Pongasé en contacto con el servicio técnico.');
end;

procedure TFFacturas.BEliminarClick(Sender: TObject);
 var Numero,Cliente: string;
     Cantidad,iva: Double;

begin
if MessageDlg('Va Vd. a eliminar la factura '+TFacturasNumFac.Value+#13+
              'Creada el '+TFacturasFecFAc.AsString+#13+
              'A nombre de: '+TFacturasNomCli.Value+#13+
              'Se creará una factura de abono.'#13+#13+
              '¿Está Vd. realmente seguro de querer realizar esta operación?',
              mtConfirmation,[mbOk,mbCancel],0)=mrOk then
 begin
   Numero:=TFacturasNumFac.Value;
   Cliente:=TFacturasCifCli.value;
   Cantidad:=TFacturasBasImpFac.value;
   Iva:=TFacturasPorIvaFac.value;

   TFacturas.Edit;
   TFacturasEstFac.Value:='B';//marcamos la factura como abonada.
   TFActuras.Post;
   TFacturas.Insert;
   TFacturasCifCli.Value:=Cliente;
   TFacturasPorIvaFac.value:=Iva;
   TFacturasEstFac.Value:='A';//marcamos la factura como tipo abono.

   TDetalleFac.Insert;
   TDetalleFacConDetFac.value:='Abono de la factura número '+Numero;
   TDetalleFacCanDetFac.value:=1;
   TDetalleFacPreUniDetFac.value:=Cantidad*(-1);

   GuardarClick(nil);
   TFacturasAfterScroll(nil);
 end;
end;

procedure TFFacturas.TFacturasAfterScroll(DataSet: TDataSet);
begin
if (TFacturas.State in [dsBrowse]) then
  begin
   if TFacturasEstFac.value='A' then   //Es de abono
        LEstado.Caption:='FACTURA DE ABONO'
   else if TFacturasEstFac.Value='B' then //ha sido borrada
        LEstado.Caption:='FACTURA ABONADA'
   else //la factura no tiene abono ni ha sido abonada.
        LEstado.Caption:='';
   DSFacturasStateChange(nil);
  end;
end;

procedure TFFacturas.FormShow(Sender: TObject);
begin
  if TFacturas.Active then TFacturas.Close;
  if EsHistoricoFac then
     Begin
       AnioFacturacion:=IntToStr(2000+(TGeneralAnno.AsInteger-1));
       Caption:='Facturación correspondiente al año '+AnioFacturacion+'.';
       EAnio.Visible:=True;
       LAnio.Visible:=True;
       Nueva.Enabled:=false;
       BNuevo.Enabled:=false;
     end
  else
     begin
       AnioFacturacion:=IntToStr(2000+(TGeneralAnno.AsInteger));
       Caption:='Facturación.';
     end;
  EAnio.Text:=AnioFacturacion;
  TFacturas.Filter:='FecFac >=''01/01/'+AnioFacturacion+''' and FecFac<=''31/12/'+AnioFacturacion+'''';
  DBFecFac.MaxDate:=0;
  DBFecFac.MinDate:=0;
  TFacturas.Open;
  DBFecFac.MaxDate:=StrToDate('31/12/'+AnioFacturacion);
  DBFecFac.MinDate:=StrToDate('01/01/'+AnioFacturacion);

end;

procedure TFFacturas.EAnioExit(Sender: TObject);
begin
   Try
     if ((TGeneralAnno.Value+2000)<=StrToInt(EAnio.Text))or
          (length(Eanio.Text)<4) then//si metemos un año maroy o igual al que corre de facturación
       begin
         MessageDlg('Introduzca un año menor que el año de facturación acutal.'+#13+
         'El año introducido debe contener 4 dígitos.',mtWarning,[mbOk],0);
         EAnio.SetFocus;
       end
     else
       begin
         TFacturas.Close;
         AnioFacturacion:=EAnio.Text;
         TFacturas.Filter:='FecFac >=''01/01/'+AnioFacturacion+''' and FecFac<=''31/12/'+AnioFacturacion+'''';
         DBFecFac.MaxDate:=0;
         DBFecFac.MinDate:=0;
         TFacturas.Open;
         DBFecFac.MaxDate:=StrToDate('31/12/'+AnioFacturacion);
         DBFecFac.MinDate:=StrToDate('01/01/'+AnioFacturacion);
         if TFacturas.RecordCount=0 then
           begin
             MessageDlg('No existen facturas para este año.',mtWarning,[mbOk],0);
             EAnio.SetFocus;
           end;
       end;
   except
     EAnio.SetFocus;
     raise Exception.Create('Inserte un valor numérico válido.');
   end;
end;

procedure TFFacturas.EAnioChange(Sender: TObject);
begin
  if (length(Eanio.Text)=4)and(EAnio.Visible) then EAnioExit(nil);
end;

procedure TFFacturas.TDetalleFacUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  if not(TFacturas.State in [dsEdit,dsInsert])then TFacturas.Edit;
  ShowMessage(E.Message+#13+'Pongase en contacto con el servicio técnico.');
end;

procedure TFFacturas.DBGConceptosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=Vk_Delete)and(ssCtrl in Shift) then
    begin
       if not TDetalleFac.IsEmpty then
          TDetalleFac.Delete;
       Key:=0;
    end;
end;

procedure TFFacturas.DBGConceptosKeyPress(Sender: TObject; var Key: Char);
begin

 if (DBGConceptos.GetActiveCol in [2,3])and
    ((not(ord(Key) in [ord('0')..ord('9')])) and (Key<>',')and (key<>'-')) then
     Key:=#0;

end;

procedure TFFacturas.TDetalleFacBeforePost(DataSet: TDataSet);
begin
  TDetalleFacConDetFac.value:=Trim(TDetalleFacConDetFac.Value);
  if TDetalleFacConDetFac.value='' then
     raise Exception.Create('El concepto no puede esta vacío.');
  if TDetalleFacCanDetFac.AsString='' then
     raise Exception.Create('Tiene que introducir la cantidad de unidades.');
  if TDetalleFacPreUniDetFac.AsString='' then
     raise Exception.Create('Tiene que introducir el precio unitario.');
  if TDetalleFacCanDetFac.Value<=0 then
     raise Exception.Create('La cantidad de unidades no es válida.')
end;

end.
