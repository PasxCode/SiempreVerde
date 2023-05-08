object FProgreso: TFProgreso
  Left = 352
  Top = 187
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Copia de seguridad en curso...'
  ClientHeight = 144
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LActual: TLabel
    Left = 8
    Top = 16
    Width = 72
    Height = 13
    Caption = 'Archivo Actual:'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 68
    Height = 13
    Caption = 'Progreso total:'
  end
  object Button1: TButton
    Left = 122
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object PTotal: TProgressBar
    Left = 8
    Top = 72
    Width = 305
    Height = 16
    TabOrder = 1
  end
  object PActual: TProgressBar
    Left = 8
    Top = 32
    Width = 305
    Height = 16
    TabOrder = 2
  end
end
