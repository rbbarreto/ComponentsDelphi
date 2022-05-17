unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmHome = class(TForm)
    Button1: TButton;
    ScrollBox1: TScrollBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure OnCheckBox(Sender:TObject);
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;
  iCount: Integer;

implementation

{$R *.dfm}

procedure TfrmHome.Button1Click(Sender: TObject);
var
  LCheckBox : TCheckBox;
begin
  LCheckBox := TCheckBox.Create(Self);

  inc(iCount);

  LCheckBox.Parent := ScrollBox1;
  LCheckBox.Name := 'Nome_' + iCount.ToString;

  LCheckBox.Height := 70;
//  LCheckBox.Width := 400;
//  LCheckBox.Left := 212;

  LCheckBox.Top := ScrollBox1.Height;
  LCheckBox.Align := alTop;

  LCheckBox.Caption := 'Criando CheckBox ' + iCount.ToString;
  LCheckBox.Font.Size := 20;
  LCheckBox.Checked := true;

  LCheckBox.OnClick := OnCheckBox;
end;

procedure TfrmHome.OnCheckBox(Sender: TObject);
begin
  ShowMessage((sender as TCheckBox).Name);

  if (TCheckBox(Sender).Checked) then
    TCheckBox(Sender).Caption := 'true'
  else
    TCheckBox(Sender).Caption := 'false';
end;

end.
