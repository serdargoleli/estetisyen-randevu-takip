unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit3, Unit2;

procedure TForm7.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  sorgu: Integer;
begin
  CanClose := false;
  sorgu := Application.MessageBox('Uygulama kapatýlsýn mý ?',
    'Estetisyen Randevu Otomasyonu', MB_YESNO + MB_ICONQUESTION);
  if sorgu = idYes then
  begin
    CanClose := true;
    Application.Terminate;
  end;

end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
var
  ara: Boolean;
  i: Integer;
begin
  ara := form3.ADOTable1.Locate('tc', Edit1.Text, []);
  if (ara) then
    i := Application.MessageBox('Arama Bulundu..', 'ARAMA',
      MB_OK + MB_ICONINFORMATION)
  else
    i := Application.MessageBox('Arama Bulunamadý..', 'ARAMA',
      MB_OK + MB_ICONHAND);
  Edit1.Text := '';
end;

procedure TForm7.SpeedButton2Click(Sender: TObject);
begin
  Form7.Hide;
  form3.Show;
end;

end.
