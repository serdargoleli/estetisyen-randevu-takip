unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Buttons;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    ADOConnection1: TADOConnection;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3;

procedure TForm2.Button1Click(Sender: TObject);
const
  Yol = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s; Persist Security Info=False';
var
  veriTabani: String;
begin
  if (Edit1.Text = 'gozdesecen') and (Edit2.Text = '123456') then
  begin
    veriTabani := ExtractFilePath(Application.Exename) + 'estetisyen.mdb';
    ADOConnection1.ConnectionString := Format(Yol, [veriTabani]);
    ADOConnection1.Connected := true;
    Form1.AlphaBlend := true;
    Form1.AlphaBlendValue := 0;
    Form3.ADOTable1.Active := true;
    Form2.Hide;
    Form3.Show;
  end
  else
    Application.MessageBox('Kullanýcý Adý Veya Þifre Hatalý..Tekrar Deneyin',
      'HATALI GÝRÝÞ', MB_OK + MB_ICONHAND);

end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) then
  begin
    Edit2.PasswordChar := #0;
  end
  else
  begin
    Edit2.PasswordChar := '*';
  end;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TForm2.SpeedButton1Click(Sender: TObject);
const
  Yol = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s; Persist Security Info=False';
var
  veriTabani: String;
begin
  if (Edit1.Text = 'gozdesecen') and (Edit2.Text = '123456') then
  begin
    veriTabani := ExtractFilePath(Application.Exename) + 'estetisyen.mdb';
    ADOConnection1.ConnectionString := Format(Yol, [veriTabani]);
    ADOConnection1.Connected := true;
    Form1.AlphaBlend := true;
    Form1.AlphaBlendValue := 0;
    Form3.ADOTable1.Active := true;
    Form2.Hide;
    Form3.Show;
  end
  else
    Application.MessageBox('Kullanýcý Adý Veya Þifre Hatalý..Tekrar Deneyin',
      'HATALI GÝRÝÞ', MB_OK + MB_ICONHAND);

end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
