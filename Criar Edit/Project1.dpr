program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmHome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.Run;
end.
