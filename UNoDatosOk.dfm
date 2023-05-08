object FNoDatosOk: TFNoDatosOk
  Left = 355
  Top = 259
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Los datos no son correctos'
  ClientHeight = 165
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 128
    Top = 8
    Width = 131
    Height = 24
    Caption = #161' ATENCI'#211'N !'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 48
    Width = 333
    Height = 39
    Caption = 
      'Se ha detectado que los datos de su empresa faltan o son incorre' +
      'ctos.'#13#10'Es  necesario que  existan  los  datos  requeridos de su ' +
      ' empresa para'#13#10'poder usar la aplicaci'#243'n. '
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 104
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
end
