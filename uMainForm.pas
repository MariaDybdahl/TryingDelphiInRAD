unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdHTTP, System.JSON, uRandomAPI,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
  btnText: TButton;
  textFromBTN: TStaticText;
    lvUsers: TListView;
  procedure btnTextClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
     {$R *.dfm}

procedure TForm1.btnTextClick(Sender: TObject);
   var
 Users: TStringList;
 JSON: TJSONObject;


begin
textFromBTN.Caption := 'Henter 10 users';


Users:= uRandomAPI.GetHTTP;

try



finally
  Users.Free;
end;

end;



end.

