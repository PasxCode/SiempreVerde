unit UCalculoFac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolEdit, StdCtrls, Mask;

type
  TFCalculoFac = class(TForm)
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
    BVisualizar: TButton;
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
  FCalculoFac: TFCalculoFac;

implementation

uses UReport, DB, Math;

{$R *.dfm}

procedure TFCalculoFac.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caHide;
end;

procedure TFCalculoFac.BImprimirClick(Sender: TObject);
begin
  if FReport=nil then
    FReport:=TFReport.Create(nil);
  FReport.QCalculoFac.Close;
  FReport.QCalculoFac.SQL.Clear;
  FReport.QCalculoFac.SQL.Add('SELECT F.NumFac, F.CifCli, F.FecFac, F.BasImpFac,');
  FReport.QCalculoFac.SQL.Add('C.NomCli, F.PorIvaFac');
  FReport.QCalculoFac.SQL.Add('FROM Clientes C, Facturas F');
  FReport.QCalculoFac.SQL.Add('where F.CifCli = C.CifCli');

  if RBNumero.Checked then
    begin
     FReport.QCalculoFac.SQL.Add('and F.NumFac between '''+ENumDesde.Text+''' and '''+ENumHasta.Text+'''');
    end;
  if RBFecha.Checked then
    begin
     try
       FReport.QCalculoFac.SQL.Add('and F.FecFac between '''+
         FormatDateTime('mm/dd/yyyy', StrToDate(EFecDesde.text))+'''and '''+
         FormatDateTime('mm/dd/yyyy', StrToDate(EFecHasta.text))+'''');
       FReport.QCalculoFac.SQL.Add('order by F.FecFac');
     except
       raise Exception.Create('Las fechas introducidas no son válidas.');
     end;
    end;
  try
    FReport.QCalculoFac.Open;
  except
    raise Exception.Create('Se ha detectado un error. Aseguresé de que ha introducido datos correctos.');
  end;
  if FReport.QCalculoFac.IsEmpty then
      begin
        messageDlg('No se encontraron registros que imprimir',mtInformation,[mbOk],0);
        FReport.Close;
      end
  else
    begin
      with FReport do
        begin
          QCalculoFac.First;
          TotBasImp:=0;
          TotIva:=0;
          while not QCalculoFac.Eof do
            begin
              TotBasImp:=TotBasImp + RoundTo(QCalculoFacBasImpFac.AsFloat,-2);
              TotIva:=TotIva + RoundTo(((QCalculoFacPorIvaFac.asFloat * QCalculoFacBasImpFac.asFloat)/100),-2);
              QCalculoFac.Next;
            end;
          QCalculoFac.First;
        end;
      try
         if BImprimir.Focused then FReport.ImprimirCalculosFac;
         if BVisualizar.Focused then FReport.QRCalculoFac.Preview;
      except
         raise Exception.Create('Aseguresé de que ha rellenado los campos correctamente.');
      end;
      close;
    end;

end;

procedure TFCalculoFac.FormShow(Sender: TObject);
begin
  ENumHasta.Text:=ENumDesde.Text;
  RBNumeroClick(nil);
end;

procedure TFCalculoFac.BCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFCalculoFac.RBNumeroClick(Sender: TObject);
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

procedure TFCalculoFac.RBFechaClick(Sender: TObject);
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

procedure TFCalculoFac.EFecDesdeExit(Sender: TObject);
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

procedure TFCalculoFac.EFecHastaExit(Sender: TObject);
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

procedure TFCalculoFac.ENumDesdeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(ord(Key) in [ord('0')..Ord('9')]) then
    Key:=#0;
end;

procedure TFCalculoFac.ENumDesdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_delete) or (key=vk_back) then Key:=0;
end;

end.
