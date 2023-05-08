program CopSeg;

uses
  Forms,
  UCopSeg in 'UCopSeg.pas' {FCopSeg},
  UProgreso in 'UProgreso.pas' {FProgreso};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFCopSeg, FCopSeg);
  Application.Run;
end.
