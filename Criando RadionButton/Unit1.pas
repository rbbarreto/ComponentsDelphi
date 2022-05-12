unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ScrollBox1: TScrollBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DynOnClick(sender : TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iCount: Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  DynRadionButton : TRadioButton;
begin
  inc(iCount);

  DynRadionButton := TRadioButton.Create(Self);
  DynRadionButton.Parent := ScrollBox1;

  DynRadionButton.Caption := 'DynRadion Button ' + icount.ToString;

  DynRadionButton.Height := 50;
  DynRadionButton.Font.Size := 20;

  DynRadionButton.Align := alTop;
  DynRadionButton.Top := ScrollBox1.Height;

  DynRadionButton.OnClick := DynOnClick;



end;

procedure TForm1.DynOnClick(sender: TObject);
begin
  ShowMessage((sender as TRadioButton).Caption);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  iCount := 0;
end;

end.
