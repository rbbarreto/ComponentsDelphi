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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure dynEditChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;
  iCount : Integer;

implementation

{$R *.dfm}

procedure TfrmHome.Button1Click(Sender: TObject);
var
  dynEdit : TEdit;
begin
  dynEdit := TEdit.Create(Self);
  dynEdit.Parent := ScrollBox1;

  Inc(iCount);

  dynEdit.Text := 'Criando de componente ' + iCount.ToString;
  dynEdit.Width := 300;
  dynEdit.Height := 100;
  dynEdit.Font.Size := 20;

  dynEdit.Left := 50;
  dynEdit.Align := TAlign.alTop;

  dynEdit.OnChange := dynEditChange;
end;

procedure TfrmHome.dynEditChange(Sender: TObject);
begin
  if Length((sender as TEdit).Text) = 10 then
 //  ShowMessage( (Sender as TEdit).Text );
   ((Sender as TEdit).Destroy);
end;

procedure TfrmHome.FormCreate(Sender: TObject);
begin
  iCount := 0;
end;

end.
