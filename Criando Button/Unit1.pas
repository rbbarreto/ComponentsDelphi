unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TfrmHome = class(TForm)
    Button1: TButton;
    ScrollBox1: TScrollBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure DynButtonClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;
  x, y : Integer;

implementation

{$R *.dfm}


procedure TfrmHome.Button1Click(Sender: TObject);
var
  dynButton: TButton;
begin
  Randomize;
  x := Math.RandomRange(0, ScrollBox1.ClientWidth);
  y := Math.RandomRange(0, ScrollBox1.ClientHeight);

  dynButton := TButton.Create(Self);
  dynButton.Parent := ScrollBox1;

  dynButton.Caption := 'Criando componente Dinamico Button 01';
  dynButton.Left := x;
  dynButton.Top := y;
  dynButton.Width := 350;
  dynButton.Height := 30;

  dynButton.Font.Size := 15;

  dynButton.OnClick := DynButtonClick;


end;

procedure TfrmHome.DynButtonClick(Sender: TObject);
begin
   ShowMessage((sender as TButton).Caption);
end;

end.
