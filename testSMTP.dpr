program testSMTP;

uses
  Vcl.Forms,
  test in 'test.pas' {EnvioMail};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TEnvioMail, EnvioMail);
  Application.Run;
end.
