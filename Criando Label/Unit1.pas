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
    procedure OnLabelClick(Sender:TObject);
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
  LLabel : TLabel;
begin
  LLabel := TLabel.Create(Self);

  inc(iCount);

  LLabel.Parent := ScrollBox1;
  LLabel.Name := 'Nome_' + iCount.ToString;

  LLabel.Top := ScrollBox1.Height;
  LLabel.Align := alTop;

  LLabel.Caption := 'Criando Label ' + iCount.ToString;
  LLabel.Font.Size := 20;

  LLabel.Cursor := crHandPoint;

  LLabel.OnClick := OnLabelClick;
end;

procedure TfrmHome.OnLabelClick(Sender: TObject);
begin
  ShowMessage((sender as TLabel).Caption);
  ShowMessage((sender as Tlabel).Name);
end;

end.
