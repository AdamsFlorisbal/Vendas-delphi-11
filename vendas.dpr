program vendas;

uses
  Vcl.Forms,
  U_principal in 'U_principal.pas' {frmPrincipal},
  uDTMConexaoo in 'datamodule\uDTMConexaoo.pas' {dtmPrincipal: TDataModule},
  uTelaHeremaca in 'heranca\uTelaHeremaca.pas' {frmTelaHeranca},
  uCadCategoria in 'cadastro\uCadCategoria.pas' {frmCadCategoria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
