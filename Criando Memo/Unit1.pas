unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    ScrollBox1: TScrollBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure dynMemoClick(sender : TObject);
  end;

var
  frmMain: TfrmMain;
  iCount: Integer;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
var
  LMemo : TMemo;
begin

  inc(iCount);
  LMemo := TMemo.Create(frmMain);
  LMemo.Parent := ScrollBox1;

  LMemo.Height := 100;

  LMemo.Align := alTop;
  LMemo.Font.Size := 20;

  LMemo.Clear;
  LMemo.Lines.Add('Memo ' + icount.ToString);

  LMemo.OnClick := dynMemoClick;

end;

procedure TfrmMain.dynMemoClick(sender: TObject);
begin
 ShowMessage((sender as TMemo).Text);
end;

end.
