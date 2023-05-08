unit UFiltLisCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFFiltLisCli = class(TForm)
    RGForPag: TRadioGroup;
    RGTipo: TRadioGroup;
    Label1: TLabel;
    EPoblacion: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltLisCli: TFFiltLisCli;

implementation

uses UReport;

{$R *.dfm}

procedure TFFiltLisCli.BitBtn1Click(Sender: TObject);
Var Union: String;
begin

end;

end.
