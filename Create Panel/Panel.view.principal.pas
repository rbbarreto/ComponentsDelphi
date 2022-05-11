unit Panel.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmHome = class(TForm)
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    procedure Panel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DynPanelOnclick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;
  iCount: integer;

implementation

{$R *.dfm}

procedure TfrmHome.DynPanelOnclick(Sender: TObject);
begin
  ShowMessage(ColorToString((sender as Tpanel).Color));
end;

procedure TfrmHome.FormCreate(Sender: TObject);
begin
  iCount := 0;
end;

procedure TfrmHome.Panel1Click(Sender: TObject);
var
  dynPanel : TPanel;
  iColor : Integer;
begin
  Randomize;
  icolor := Random(100000);

  inc(iCount);

  dynPanel := TPanel.Create(Self);
  dynPanel.Parent := ScrollBox1;

  dynpanel.Name := 'Panel_' + iCount.ToString;
  dynPanel.Height := 60;
  dynPanel.Align := alTop;
  dynPanel.ParentBackground := false;
  dynPanel.Color := icolor;

  dynPanel.OnClick := DynPanelOnclick;
  dynpanel.Cursor := crHandPoint;
end;

end.
