object EnvioMail: TEnvioMail
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'EnvioMail'
  ClientHeight = 548
  ClientWidth = 860
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object labelHost: TLabel
    Left = 155
    Top = 117
    Width = 54
    Height = 17
    Caption = 'Servidor'
  end
  object labelUsuario: TLabel
    Left = 159
    Top = 148
    Width = 50
    Height = 17
    Caption = 'Usuario'
  end
  object labelPassword: TLabel
    Left = 143
    Top = 179
    Width = 66
    Height = 17
    Caption = 'Password'
  end
  object labelDestino: TLabel
    Left = 460
    Top = 148
    Width = 50
    Height = 17
    Caption = 'Destino'
  end
  object labelPuerto: TLabel
    Left = 467
    Top = 117
    Width = 43
    Height = 17
    Caption = 'Puerto'
  end
  object buttonEnviar: TSpeedButton
    Left = 762
    Top = 510
    Width = 90
    Height = 30
    Cursor = crHandPoint
    Caption = 'Enviar'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13326375
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = buttonEnviarClick
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 139
    Height = 32
    Caption = 'Envio email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13326375
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object host: TEdit
    Left = 215
    Top = 113
    Width = 200
    Height = 25
    TabOrder = 0
    TextHint = 'servidor'
  end
  object usuario: TEdit
    Left = 215
    Top = 144
    Width = 200
    Height = 25
    TabOrder = 1
    TextHint = 'usuario'
  end
  object password: TEdit
    Left = 215
    Top = 175
    Width = 200
    Height = 25
    PasswordChar = #8226
    TabOrder = 2
    TextHint = 'password'
  end
  object destino: TEdit
    Left = 516
    Top = 144
    Width = 200
    Height = 25
    TabOrder = 4
    TextHint = 'destino'
  end
  object puerto: TEdit
    Left = 516
    Top = 113
    Width = 90
    Height = 25
    NumbersOnly = True
    TabOrder = 3
    TextHint = 'puerto'
  end
  object asunto: TEdit
    Left = 8
    Top = 281
    Width = 358
    Height = 25
    TabOrder = 5
    TextHint = 'Asunto'
  end
  object cuerpo: TMemo
    Left = 8
    Top = 312
    Width = 844
    Height = 192
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    ScrollBars = ssVertical
    TabOrder = 6
  end
end
