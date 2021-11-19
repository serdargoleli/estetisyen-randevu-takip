unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit3, Unit2;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
  Form6.Hide;
  form3.show;
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
var
  sil: Integer;
begin
  sil := Application.MessageBox('Seçilen randevu silinsin mi?', 'SÝL',
    MB_YESNO + MB_ICONQUESTION);
  if sil = idYes then
  begin
    form3.ADOTable1.Delete;
    sil := Application.MessageBox('Randevu kaydý silindi', '',
      MB_OK + MB_ICONINFORMATION);
  end;

end;

end.
