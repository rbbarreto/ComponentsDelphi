program ComponentComboBox;

uses
  Vcl.Forms,
  Component.View.principal in 'Component.View.principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
