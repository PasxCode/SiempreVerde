unit UImpFac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit;

type
  TFImpFac = class(TForm)
    RBNumero: TRadioButton;
    RBFecha: TRadioButton;
    ENumDesde: TMaskEdit;
    ENumHasta: TMaskEdit;
    BImprimir: TButton;
    BCancelar: TButton;
    EFecDesde: TDateEdit;
    EFecHasta: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure RBNumeroClick(Sender: TObject);
    procedure RBFechaClick(Sender: TObject);
    procedure EFecDesdeExit(Sender: TObject);
    procedure EFecHastaExit(Sender: TObject);
    procedure ENumDesdeKeyPress(Sender: TObject; var Key: Char);
    procedure ENumDesdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImpFac: TFImpFac;

implementation

uses UReport;

{$R *.dfm}

procedure TFImpFac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caHide;
end;

procedure TFImpFac.BImprimirClick(Sender: TObject);

begin
  if FReport=nil then
    FReport:=TFReport.Create(nil);
  FReport.TDetalle.Close;
  FReport.QFacturas.Close;
  FReport.QFacturas.SQL.Clear;
  FReport.QFacturas.SQL.Add('SELECT F.NumFac, F.CifCli, F.FecFac, F.BasImpFac, F.PorIvaFac, F.ObsFac,');
  FReport.QFacturas.SQL.Add('C.NomCli, C.DirCli, C.CPCli, C.PobCli, C.ProCli');
  FReport.QFacturas.SQL.Add('FROM Clientes C, Facturas F');
  FReport.QFacturas.SQL.Add('where F.CifCli = C.CifCli');

  if RBNumero.Checked then
    begin
     FReport.QFacturas.SQL.Add('and F.NumFac between '''+ENumDesde.Text+''' and '''+ENumHasta.Text+'''');
    end;
  if RBFecha.Checked then
    begin
//     FReport.QFacturas.SQL.Add('and F.FecFac between '''+EFecDesde.Text+''' and '''+EFecHasta.Text+'''');
      ;
     FReport.QFacturas.SQL.Add('and F.FecFac between '''+
       FormatDateTime('mm/dd/yyyy', StrToDate(EFecDesde.text))+'''and '''+
       FormatDateTime('mm/dd/yyyy', StrToDate(EFecHasta.text))+'''');
    end;
  try
    FReport.QFacturas.Open;
    FReport.TDetalle.Open;
  except
    raise Exception.Create('Se ha detectado un error. Aseguresé de que ha introducido datos correctos.');
  end;
  if FReport.QFacturas.IsEmpty then
     messageDlg('No se encontraron registros que imprimir',mtInformation,[mbOk],0)
  else
    begin
      FReport.ImprimirFacturas;
      close;
    end;

end;

procedure TFImpFac.FormShow(Sender: TObject);
begin
  ENumHasta.Text:=ENumDesde.Text;
  RBNumeroClick(nil);
end;

procedure TFImpFac.BCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFImpFac.RBNumeroClick(Sender: TObject);
begin
  if RBNumero.Checked then
    begin
      ENumDesde.Enabled:=true;
      ENumHasta.Enabled:=true;
      EFecDesde.Enabled:=false;
      EFecHasta.Enabled:=false;
      ENumDesde.SetFocus;
    end;
end;

procedure TFImpFac.RBFechaClick(Sender: TObject);
begin
   if RBFecha.Enabled then
     begin
      ENumDesde.Enabled:=false;
      ENumHasta.Enabled:=false;
      EFecDesde.Enabled:=true;
      EFecHasta.Enabled:=true;
      EFecDesde.SetFocus;
     end;
end;

procedure TFImpFac.EFecDesdeExit(Sender: TObject);
begin
  try
    if EFecDesde.Text<>'  /  /    ' then
      StrToDate(EFecDesde.Text);
  except
    if not(BCancelar.Focused)then
      begin
       EFecDesde.SetFocus;
       raise Exception.Create('La fecha introducida no es válida.');
      end
    else
      begin
        EFecDesde.Text:='  /  /    ';
        Close;
      end;
  end;
end;

procedure TFImpFac.EFecHastaExit(Sender: TObject);
begin
  try
   if EFecHasta.Text<>'  /  /    ' then
     StrToDate(EFecHasta.Text);
  except
    if not(BCancelar.Focused)then
      begin
       EFecHasta.SetFocus;
       raise Exception.Create('La fecha introducida no es válida.');
      end
    else
      begin
        EFecHasta.Text:='  /  /    ';
        Close;
      end;
  end;
end;

procedure TFImpFac.ENumDesdeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(ord(Key) in [ord('0')..Ord('9')]) then
    Key:=#0;
end;

procedure TFImpFac.ENumDesdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_delete) or (key=vk_back) then Key:=0;
end;

end.
