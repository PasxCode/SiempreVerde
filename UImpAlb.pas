unit UImpAlb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolEdit, StdCtrls, Mask;

type
  TFImpAlb = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    RBNumero: TRadioButton;
    RBFecha: TRadioButton;
    ENumDesde: TMaskEdit;
    ENumHasta: TMaskEdit;
    BImprimir: TButton;
    BCancelar: TButton;
    EFecDesde: TDateEdit;
    EFecHasta: TDateEdit;
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
  FImpAlb: TFImpAlb;

implementation
uses UReport;

{$R *.dfm}

procedure TFImpAlb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caHide;
end;

procedure TFImpAlb.BImprimirClick(Sender: TObject);

begin
  if FReport=nil then
    FReport:=TFReport.Create(nil);
  FReport.TDetalleAlb .Close;
  FReport.QAlbaranes.Close;
  FReport.QAlbaranes.SQL.Clear;
  FReport.QAlbaranes.SQL.Add('SELECT A.NumAlb, A.CifCli, A.FecAlb, A.BasImpAlb, A.PorIvaAlb, A.ObsAlb,');
  FReport.QAlbaranes.SQL.Add('C.NomCli, C.DirCli, C.CPCli, C.PobCli, C.ProCli');
  FReport.QAlbaranes.SQL.Add('FROM Clientes C, Albaranes A');
  FReport.QAlbaranes.SQL.Add('where A.CifCli = C.CifCli');

  if RBNumero.Checked then
    begin
     FReport.QAlbaranes.SQL.Add('and A.NumAlb between '''+ENumDesde.Text+''' and '''+ENumHasta.Text+'''');
    end;
  if RBFecha.Checked then
    begin

     FReport.QAlbaranes.SQL.Add('and A.FecAlb between '''+
       FormatDateTime('mm/dd/yyyy', StrToDate(EFecDesde.text))+'''and '''+
       FormatDateTime('mm/dd/yyyy', StrToDate(EFecHasta.text))+'''');
    end;

  FReport.QAlbaranes.Open;
  FReport.TDetalleAlb.Open;
  if FReport.QAlbaranes.IsEmpty then
     messageDlg('No se encontraron registros que imprimir',mtInformation,[mbOk],0)
  else
    begin
      FReport.ImprimirAlbaranes;
      close;
    end;

end;

procedure TFImpAlb.FormShow(Sender: TObject);
begin
  ENumHasta.Text:=ENumDesde.Text;
  RBNumeroClick(nil);
end;

procedure TFImpAlb.BCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFImpAlb.RBNumeroClick(Sender: TObject);
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

procedure TFImpAlb.RBFechaClick(Sender: TObject);
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


procedure TFImpAlb.EFecDesdeExit(Sender: TObject);
begin
  try
   if EFecDesde.Text<>'  /  /    ' then
    StrToDate(EFecDesde.Text);
  except
    if not(BCancelar.Focused)then
      begin
       EFecDesde.SetFocus;
       raise Exception.Create('La fecha introducida no es v�lida.');
      end
    else
      begin
        EFecDesde.Text:='  /  /    ';
        Close;
      end;
  end;
end;

procedure TFImpAlb.EFecHastaExit(Sender: TObject);
begin
  try
   if EFecHasta.Text<>'  /  /    ' then
    StrToDate(EFecHasta.Text);
  except
    if not(BCancelar.Focused)then
      begin
       EFecHasta.SetFocus;
       raise Exception.Create('La fecha introducida no es v�lida.');
      end
    else
      begin
        EFecHasta.Text:='  /  /    ';
        Close;
      end;
  end;
end;

procedure TFImpAlb.ENumDesdeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(ord(Key) in [ord('0')..Ord('9')]) then
    Key:=#0;
end;

procedure TFImpAlb.ENumDesdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_delete) or (key=vk_back) then Key:=0;
end;

end.
