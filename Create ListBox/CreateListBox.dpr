program CreateListBox;

uses
  Vcl.Forms,
  Create.ListBox in 'Create.ListBox.pas' {frmHome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.Run;
end.
