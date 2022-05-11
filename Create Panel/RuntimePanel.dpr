program RuntimePanel;

uses
  Vcl.Forms,
  Panel.view.principal in 'Panel.view.principal.pas' {frmHome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.Run;
end.
