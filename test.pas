unit test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdAttachmentFile,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdSSLOpenSSLHeaders;

type
  TEnvioMail = class(TForm)
    host: TEdit;
    usuario: TEdit;
    password: TEdit;
    destino: TEdit;
    puerto: TEdit;
    asunto: TEdit;
    cuerpo: TMemo;
    labelHost: TLabel;
    labelUsuario: TLabel;
    labelPassword: TLabel;
    labelDestino: TLabel;
    labelPuerto: TLabel;
    buttonEnviar: TSpeedButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure buttonEnviarClick(Sender: TObject);
    procedure clear;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EnvioMail: TEnvioMail;

implementation

{$R *.dfm}

procedure TEnvioMail.buttonEnviarClick(Sender: TObject);
var
  SMTP : TidSMTP;
  Msg : TidMessage;
  handler : TidSSLIOHandlerSocketOpenSSL;
begin
  Msg := TIdMessage.Create(nil);
  try
    Msg.From.Address := usuario.Text;
    Msg.Recipients.EMailAddresses := destino.Text;
    Msg.Body.Text := cuerpo.Lines.Text;
    Msg.Subject := asunto.Text;
    SMTP := TIdSMTP.Create(nil);
    try
      SMTP.Host := host.Text;
      SMTP.Port := StrToInt(puerto.Text);
      SMTP.AuthType := satDefault;
      SMTP.Username := usuario.Text;
      SMTP.Password := password.Text;
      handler := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      SMTP.IOHandler := handler;
      SMTP.UseTLS := utUseImplicitTLS;
      SMTP.Connect;
      SMTP.Send(Msg);
    finally
      SMTP.Free;
    end;
  finally
    Msg.Free;
    clear;
  end;
end;

procedure TEnvioMail.FormCreate(Sender: TObject);
begin
  IdSSLOpenSSLHeaders.Load;
end;

procedure TEnvioMail.clear;
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TEdit then
        TEdit(Components[i]).Clear;
      if Components[i] is TMemo then
        TMemo(Components[i]).Lines.Clear;
    end;
end;

end.
