unit Create.ListBox;

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
    procedure OnListBoxClick(Sender:TObject);
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
  LListBox : TListBox;
  iColor : Integer;
begin
  LListBox := TListBox.Create(frmHome);

  inc(iCount);

  LListBox.Parent := ScrollBox1;
  LListBox.Name := 'Nome_' + iCount.ToString;
  LListBox.Font.Size := 20;
  LListBox.Width := 200;
  LListBox.Align := alLeft;
  LListBox.Left := ScrollBox1.Width;


  LListBox.Items.Add('Ricardo');
  LListBox.Items.Add('Rodrigo');
  LListBox.Items.Add('Elaine');
  LListBox.Items.Add('Priscila');
  LListBox.Items.Add('Nathalia');
  LListBox.Items.Add('Paulo');
  LListBox.Items.Add('Solange');

  Randomize;
  iColor := Random(1000000);
  LListBox.Color := iColor;

  LListBox.OnClick := OnListBoxClick;
end;

procedure TfrmHome.OnListBoxClick(Sender: TObject);
begin
//  ShowMessage((sender as TListBox).Items.Text);
  ShowMessage(TListBox(sender).Items[TListBox(Sender).ItemIndex] );
  ShowMessage(ColorToString( (sender as TListBox).Color));
end;

end.
