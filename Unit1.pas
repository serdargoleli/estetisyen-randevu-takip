unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  count: Integer;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Inc(count);
  Label2.Caption := count.ToString();
  if (count >= 100) then
  begin
    Timer1.Enabled := false;
    Form1.AlphaBlend := true;
    Form1.AlphaBlendValue := 0;
    // form1.Hide;
    form2.Show;
  end;

end;

end.
