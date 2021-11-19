unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TForm3 = class(TForm)
    Image1: TImage;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1id: TAutoIncField;
    ADOTable1adi: TWideStringField;
    ADOTable1soyadi: TWideStringField;
    ADOTable1tc: TWideStringField;
    ADOTable1adres: TWideStringField;
    ADOTable1telefon: TWideStringField;
    ADOTable1randevuDetay: TWideStringField;
    ADOTable1randevuTarihi: TDateTimeField;
    ADOTable1ucret: TBCDField;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form3.Hide;
  form6.show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  form7.show;
  Form3.Hide;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Form3.Hide;
  form4.show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  form5.show;
  Form3.Hide;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  close;
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TForm3.Image1Click(Sender: TObject);
begin
  close;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  Form3.Hide;
  form4.show;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
  form5.show;
  Form3.Hide;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
  Form3.Hide;
  form6.show;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
  form7.show;
  Form3.Hide;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
close;
end;

end.
