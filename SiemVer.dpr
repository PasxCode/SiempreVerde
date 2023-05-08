program SiemVer;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UClientes in 'UClientes.pas' {FClientes},
  UFacturas in 'UFacturas.pas' {FFacturas},
  UBusFac in 'UBusFac.pas' {FBusFac},
  UAlbaranes in 'UAlbaranes.pas' {FAlbaranes},
  UBusCli in 'UBusCli.pas' {FBusCli},
  UPresupuestos in 'UPresupuestos.pas' {FPresupuestos},
  UBusPres in 'UBusPres.pas' {FBusPres},
  UBusALb in 'UBusALb.pas' {FBusAlb},
  UReport in 'UReport.pas' {FRreport},
  UGenerales in 'UGenerales.pas' {FGenerales},
  UNoDatosOk in 'UNoDatosOk.pas' {FNoDatosOk},
  UAbout in 'UAbout.pas' {FAbout},
  UImpFac in 'UImpFac.pas' {FImpFac},
  UImpAlb in 'UImpAlb.pas' {FImpAlb},
  UFiltLisCli in 'UFiltLisCli.pas' {FFiltLisCli},
  UCalculoFac in 'UCalculoFac.pas' {FCalculoFac};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Programa de gestión.';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
