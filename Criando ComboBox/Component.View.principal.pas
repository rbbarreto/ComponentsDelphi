unit Component.View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ScrollBox1: TScrollBox;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DynComboBoxOnclick(Sender: TObject);
    procedure DynComboBoxSelecao(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  DynComboBox: TComboBox;
begin
  DynComboBox := TComboBox.Create(Self);
  DynComboBox.Parent := ScrollBox1;

  DynComboBox.Align := alTop;
  DynComboBox.Top := ScrollBox1.Height;
  DynComboBox.AlignWithMargins := True;
  DynComboBox.Font.Size := 20;
  DynComboBox.TextHint := 'Adicionando nome...';

  DynComboBox.Items.Add('Ricardo');
  DynComboBox.Items.Add('Mateus');
  DynComboBox.Items.Add('Carlos');
  DynComboBox.Items.Add('Rosangela');
  DynComboBox.Items.Add('Elaine');

  DynComboBox.OnClick := DynComboBoxOnclick;
  DynComboBox.OnSelect := DynComboBoxSelecao;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   TComboBox(Sender).Items.Add(UpperCase(Edit1.Text));
end;

procedure TForm1.DynComboBoxOnclick(Sender: TObject);
var
  iColor: TColor;
begin
  Randomize;
  iColor := Random(10000000);
  (sender as TComboBox).Color := iColor;
end;

procedure TForm1.DynComboBoxSelecao(Sender: TObject);
begin
  ShowMessage('Nome Selecionado ' + (Sender as TComboBox).Text);
end;

end.
