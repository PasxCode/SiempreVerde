unit UAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,shellapi;

type
  TFAbout = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    LNombre: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LMailPasx: TLabel;
    LMailTrax: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LMailTraxClick(Sender: TObject);
    procedure LMailPasxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAbout: TFAbout;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
FAbout:=nil;
end;

procedure TFAbout.Button1Click(Sender: TObject);
begin
close;
end;

procedure TFAbout.FormShow(Sender: TObject);
begin
  Caption:='Acerca de '+FPrincipal.Caption;
  LNombre.Caption:=FPrincipal.Caption;
end;

procedure TFAbout.LMailTraxClick(Sender: TObject);
begin
ShellExecute(Application.Handle,'open', PChar('mailto:'+LMailTrax.Caption), nil, nil, SW_ShowNormal);

end;

procedure TFAbout.LMailPasxClick(Sender: TObject);
begin
ShellExecute(Application.Handle,'open', PChar('mailto:'+LMailPasx.Caption), nil, nil, SW_ShowNormal);
end;

end.
