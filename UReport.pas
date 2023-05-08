unit UReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, DB, Wwdatsrc, DBTables, Wwtable, Wwquery,
  QRCtrls, StdCtrls, ComCtrls, Printers;

type
  TFReport = class(TForm)
    QFacturas: TwwQuery;
    TGeneral: TwwTable;
    DSGeneral: TwwDataSource;
    DSQuery: TwwDataSource;
    TDetalle: TwwTable;
    DSDetalle: TwwDataSource;
    TDetalleNumFac: TStringField;
    TDetalleNumDetFac: TFloatField;
    TDetalleConDetFac: TStringField;
    TDetalleCanDetFac: TFloatField;
    TDetallePreUniDetFac: TFloatField;
    QFacturasNumFac: TStringField;
    QFacturasCifCli: TStringField;
    QFacturasFecFac: TDateField;
    QFacturasBasImpFac: TCurrencyField;
    QFacturasPorIvaFac: TFloatField;
    QFacturasObsFac: TMemoField;
    QFacturasNomCli: TStringField;
    QFacturasDirCli: TStringField;
    QFacturasCPCli: TFloatField;
    QFacturasPobCli: TStringField;
    QFacturasProCli: TStringField;
    PageControl: TPageControl;
    TSFacturas: TTabSheet;
    QRFacturas: TQuickRep;
    QRSubDetail3: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr1: TQRExpr;
    QRSubDetail4: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBText12: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    TSAlbaranes: TTabSheet;
    QRAlbaranes: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr3: TQRExpr;
    QRSubDetail2: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText19: TQRDBText;
    QRExpr4: TQRExpr;
    QRDBText20: TQRDBText;
    QRBand1: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QAlbaranes: TwwQuery;
    DSQAlbaranes: TwwDataSource;
    QAlbaranesNumAlb: TStringField;
    QAlbaranesCifCli: TStringField;
    QAlbaranesFecAlb: TDateField;
    QAlbaranesBasImpAlb: TFloatField;
    QAlbaranesPorIvaAlb: TFloatField;
    QAlbaranesObsAlb: TMemoField;
    QAlbaranesNomCli: TStringField;
    QAlbaranesDirCli: TStringField;
    QAlbaranesCPCli: TFloatField;
    QAlbaranesPobCli: TStringField;
    QAlbaranesProCli: TStringField;
    TDetalleAlb: TwwTable;
    DSDetalleAlb: TwwDataSource;
    TDetalleAlbNumAlb: TStringField;
    TDetalleAlbNumDetAlb: TFloatField;
    TDetalleAlbConDetAlb: TStringField;
    TDetalleAlbCanDetAlb: TFloatField;
    TDetalleAlbPreUniDetAlb: TFloatField;
    Label1: TLabel;
    PrintDialog1: TPrintDialog;
    TabSheet1: TTabSheet;
    DSClientes: TwwDataSource;
    ScrollBox1: TScrollBox;
    QRLisCli: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr11: TQRExpr;
    TClientes: TwwQuery;
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
    TClientesEntCueCli: TFloatField;
    TClientesOfiCueCli: TFloatField;
    TClientesDCCueCli: TFloatField;
    TClientesNumCueCli: TFloatField;
    TClientesNomEntCli: TStringField;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText31: TQRDBText;
    CalculoFac: TTabSheet;
    ScrollBox2: TScrollBox;
    QCalculoFac: TwwQuery;
    QCalculoFacNumFac: TStringField;
    QCalculoFacCifCli: TStringField;
    QCalculoFacFecFac: TDateField;
    QCalculoFacBasImpFac: TCurrencyField;
    QCalculoFacNomCli: TStringField;
    QRCalculoFac: TQuickRep;
    PageHeaderBand3: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel15: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QCalculoFacPorIvaFac: TFloatField;
    QRExpr12: TQRExpr;
    SummaryBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr13: TQRExpr;
    QRLabel21: TQRLabel;
    DSCalculoFac: TwwDataSource;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData3: TQRSysData;
    QRExpr14: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRAlbaranesApplyPrinterSettings(Sender: TObject;
      var Cancel: Boolean; DevMode: Pointer);
    procedure FormShow(Sender: TObject);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRExpr12Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRDBText44Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRExpr13Print(sender: TObject; var Value: String);
    procedure QRCalculoFacApplyPrinterSettings(Sender: TObject;
      var Cancel: Boolean; DevMode: Pointer);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText19Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ImprimirAlbaranes;
    Procedure ImprimirFacturas;
    Procedure ImprimirLisCli;
    procedure ImprimirCalculosFac;
  end;

var
  FReport: TFReport;
  TotBasImp, TotIva: double;
  IvaAux: string;
implementation

uses UAlbaranes, Math, UCalculoFac;

{$R *.dfm}

Var Colores, Calidad: Integer;

procedure TFReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
  FReport:=nil;
end;

procedure TFReport.ImprimirAlbaranes;
var i,NumCopias: integer;
    Dev,Drv,Prt: array [0..255]of char;
    DevMode: THandle;
    PuntDevMode: PDevMode;
begin
  QRAlbaranes.Prepare;
  QRAlbaranes.PrinterSetup;
  Printer.GetPrinter(Dev,Drv,Prt,DevMode);
  PuntDevMode:=GlobalLock(DevMode);
  If QRAlbaranes.Tag=0 then
    Begin
       NumCopias:=PuntDevMode^.dmCopies;
       Calidad:=PuntDevMode^.dmPrintQuality;
       Colores:=PuntDevMode^.dmColor;
       PuntDevMode^.dmCopies:=1;
       GlobalUnlock(DevMode);
         for i:=1 to NumCopias do
            QRAlbaranes.Print;
    end;
 Close;
end;

procedure TFReport.ImprimirCalculosFac;
var i,NumCopias: integer;
    Dev,Drv,Prt: array [0..255]of char;
    DevMode: THandle;
    PuntDevMode: PDevMode;
begin
  QRCalculoFac.Prepare;
  QRCalculoFac.PrinterSetup;
  Printer.GetPrinter(Dev,Drv,Prt,DevMode);
  PuntDevMode:=GlobalLock(DevMode);
  If QRCalculoFac.Tag=0 then
    Begin
       NumCopias:=PuntDevMode^.dmCopies;
       Calidad:=PuntDevMode^.dmPrintQuality;
       Colores:=PuntDevMode^.dmColor;
       PuntDevMode^.dmCopies:=1;
       GlobalUnlock(DevMode);
         for i:=1 to NumCopias do
            QRCalculoFac.Print;
    end;
 Close;
end;

procedure TFReport.ImprimirFacturas;
var i,NumCopias: integer;
    Dev,Drv,Prt: array [0..255]of char;
    DevMode: THandle;
    PuntDevMode: PDevMode;
begin
  QRFacturas.Prepare;
  QRFacturas.PrinterSetup;
  Printer.GetPrinter(Dev,Drv,Prt,DevMode);
  PuntDevMode:=GlobalLock(DevMode);
  If QRFacturas.Tag=0 then
    Begin
       NumCopias:=PuntDevMode^.dmCopies;
       Calidad:=PuntDevMode^.dmPrintQuality;
       Colores:=PuntDevMode^.dmColor;
       PuntDevMode^.dmCopies:=1;
       GlobalUnlock(DevMode);
         for i:=1 to NumCopias do
            QRFacturas.Print;
    end;
 Close;
end;

procedure TFReport.ImprimirLisCli;
var i,NumCopias: integer;
    Dev,Drv,Prt: array [0..255]of char;
    DevMode: THandle;
    PuntDevMode: PDevMode;
begin
  QRLisCli.Prepare;
  QRLisCli.PrinterSetup;
  Printer.GetPrinter(Dev,Drv,Prt,DevMode);
  PuntDevMode:=GlobalLock(DevMode);
  If QRLisCli.Tag=0 then
    Begin
       NumCopias:=PuntDevMode^.dmCopies;
       Calidad:=PuntDevMode^.dmPrintQuality;
       Colores:=PuntDevMode^.dmColor;
       PuntDevMode^.dmCopies:=1;
       GlobalUnlock(DevMode);
         for i:=1 to NumCopias do
            QRLisCli.Print;
    end;
 Close;
end;

procedure TFReport.QRAlbaranesApplyPrinterSettings(Sender: TObject;
  var Cancel: Boolean; DevMode: Pointer);
begin
 PDevmode(DevMode)^.dmCopies:=1;
 PDevmode(DevMode)^.dmPrintQuality:=Calidad;
 PDevmode(DevMode)^.dmColor:=Colores;
 PDevmode(DevMode)^.dmFields:= PDevmode(DevMode)^.dmFields and (not DM_YRESOLUTION);
end;

procedure TFReport.FormShow(Sender: TObject);
begin
  Top:=5000;
  left:=5000;
  TotBasImp:=0;
  TotIva:=0;
end;

procedure TFReport.QRExpr5Print(sender: TObject; var Value: String);
begin
 Value:=IntToStr(QRLisCli.PrinterSettings.LastPage);
end;

procedure TFReport.QRLabel11Print(sender: TObject; var Value: String);
begin
 Value:=IntToStr(TClientes.RecordCount);
end;

procedure TFReport.QRLabel10Print(sender: TObject; var Value: String);
begin
 Value:='Total: '+IntToStr(TClientes.RecordCount)+' registros';
end;

procedure TFReport.QRLabel20Print(sender: TObject; var Value: String);
begin
value:=Format('%10.2f',[TotBasImp])+' €';
end;

procedure TFReport.QRExpr12Print(sender: TObject; var Value: String);
begin
 Value:=Format('%10.2f',[RoundTo(StrToFloat(Value),-2)])+' €';
end;

procedure TFReport.QRLabel21Print(sender: TObject; var Value: String);
begin
 value:=Format('%10.2f',[TotIva])+' €';
end;

procedure TFReport.QRDBText44Print(sender: TObject; var Value: String);
begin
value:=value+'%'
end;

procedure TFReport.QRLabel22Print(sender: TObject; var Value: String);
begin
   if FCalculoFac.RBNumero.Checked then
     Value:=Value + FCalculoFac.ENumDesde.Text+' hata '+FCalculoFac.ENumHasta.Text
   else
     Value:=Value + FCalculoFac.EFecDesde.Text+' hata '+FCalculoFac.EFecHasta.Text   
end;

procedure TFReport.QRExpr13Print(sender: TObject; var Value: String);
  var aux: string;
begin
  //StrLcopy(pchar(aux),pchar(Value),Pos('€',Value)-2);
  aux:=copy(Value,1,pos('€',value)-2);
  Value:=Format('%10.2f',[StrToFloat(aux)]) +' €';
end;

procedure TFReport.QRCalculoFacApplyPrinterSettings(Sender: TObject;
  var Cancel: Boolean; DevMode: Pointer);
begin
 PDevmode(DevMode)^.dmCopies:=1;
 PDevmode(DevMode)^.dmPrintQuality:=Calidad;
 PDevmode(DevMode)^.dmColor:=Colores;
 PDevmode(DevMode)^.dmFields:= PDevmode(DevMode)^.dmFields and (not DM_YRESOLUTION);
end;
procedure TFReport.QRDBText11Print(sender: TObject; var Value: String);
begin
  Value:=Value+'%';
end;

procedure TFReport.QRDBText19Print(sender: TObject; var Value: String);
begin
 Value:=Value + '%';
end;

end.
