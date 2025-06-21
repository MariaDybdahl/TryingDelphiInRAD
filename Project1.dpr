program Project1;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {Form1},
  uRandomAPI in 'uRandomAPI.pas',
  Person in 'Person.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
