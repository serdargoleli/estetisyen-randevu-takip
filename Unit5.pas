unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Bind.Controls, Vcl.Bind.Navigator;

type
  TForm5 = class(TForm)
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
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit3, Unit2;

procedure TForm5.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
  Form5.Hide;
  Form3.show;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
var
  i, q: Integer;
begin
  Form3.ADOTable1.edit;
  Form3.ADOTable1.FieldByName('randevuTarihi').AsDateTime :=
    DateTimePicker1.Date;
  Form3.ADOTable1.Refresh;
  i := Application.MessageBox('Randevu bilgileri güncellendi',
    'Güncelleme Ýþlemi', MB_OK + MB_ICONINFORMATION);

end;

end.
