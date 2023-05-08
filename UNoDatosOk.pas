unit UNoDatosOk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons;

type
  TFNoDatosOk = class(TForm)
    Label11: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNoDatosOk: TFNoDatosOk;

implementation

uses UPrincipal;


{$R *.dfm}

procedure TFNoDatosOk.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

end.
