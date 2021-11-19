unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit3, Unit2;

procedure TForm4.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TForm4.FormShow(Sender: TObject);
begin
  Form3.ADOTable1.Insert;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  Form4.Hide;
  Form3.show;
  Form3.ADOTable1.Cancel;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
var
  i, q: Integer;
begin
  Form3.ADOTable1.edit;
  Form3.ADOTable1.FieldByName('randevuTarihi').AsDateTime :=
    DateTimePicker1.Date;

  Form3.ADOTable1.Post;
  i := Application.MessageBox('Ýþlem Kaydedildi', 'Kayýt Ýþlemi',
    MB_OK + MB_ICONINFORMATION);
  Form3.ADOTable1.Insert;
end;

end.
