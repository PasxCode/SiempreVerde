unit UProgreso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFProgreso = class(TForm)
    Button1: TButton;
    PTotal: TProgressBar;
    PActual: TProgressBar;
    LActual: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProgreso: TFProgreso;

implementation

uses UCopSeg;

{$R *.dfm}

procedure TFProgreso.Button1Click(Sender: TObject);
begin
 TFCopSeg(Owner).Backup.Stop;
end;

procedure TFProgreso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
