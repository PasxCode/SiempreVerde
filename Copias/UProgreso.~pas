unit UProgreso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFProgreso = class(TForm)
    Button1: TButton;
    Animate1: TAnimate;
    PTotal: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
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

procedure TFProgreso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFProgreso.Button1Click(Sender: TObject);
begin
 (Owner as TFCopSeg).Zip.Cancel:=True;
end;

end.
