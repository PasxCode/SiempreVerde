object FAbout: TFAbout
  Left = 338
  Top = 199
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Acerca de '
  ClientHeight = 239
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 96
    Width = 214
    Height = 16
    Caption = 'Francisco Jos'#233' Su'#225'rez Perera.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 129
    Height = 13
    Caption = 'Dise'#241'o y programaci'#243'n por:'
  end
  object LNombre: TLabel
    Left = 16
    Top = 16
    Width = 64
    Height = 20
    Caption = 'Gesti'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 96
    Top = 40
    Width = 50
    Height = 13
    Caption = 'Vesi'#243'n 1.0'
  end
  object Label4: TLabel
    Left = 48
    Top = 136
    Width = 257
    Height = 16
    Caption = 'Francisco Gabriel Velasco Izquierdo.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LMailPasx: TLabel
    Left = 80
    Top = 152
    Width = 127
    Height = 13
    Cursor = crHandPoint
    Caption = 'pasx@pasxrouter.sytes.net'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = LMailPasxClick
  end
  object LMailTrax: TLabel
    Left = 80
    Top = 112
    Width = 114
    Height = 13
    Cursor = crHandPoint
    Caption = 'tati@traxrouter.sytes.net'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = LMailTraxClick
  end
  object Label5: TLabel
    Left = 128
    Top = 200
    Width = 83
    Height = 13
    Caption = 'CARTAYA - 2003'
  end
  object Button1: TButton
    Left = 256
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = Button1Click
  end
end
