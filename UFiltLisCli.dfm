object FFiltLisCli: TFFiltLisCli
  Left = 414
  Top = 330
  BorderStyle = bsDialog
  Caption = 'Listado de clientes'
  ClientHeight = 198
  ClientWidth = 283
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
  object Label1: TLabel
    Left = 16
    Top = 104
    Width = 47
    Height = 13
    Caption = 'Poblacion'
  end
  object RGForPag: TRadioGroup
    Left = 152
    Top = 16
    Width = 113
    Height = 73
    Caption = ' Forma de pago '
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Contado'
      'Transferencia')
    TabOrder = 0
  end
  object RGTipo: TRadioGroup
    Left = 16
    Top = 16
    Width = 121
    Height = 73
    Caption = ' Tipo de cliente '
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Particulares'
      'Entidades')
    TabOrder = 1
  end
  object EPoblacion: TEdit
    Left = 16
    Top = 120
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 160
    Width = 81
    Height = 25
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 160
    Top = 160
    Width = 81
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    Kind = bkCancel
  end
end
