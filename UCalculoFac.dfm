object FCalculoFac: TFCalculoFac
  Left = 331
  Top = 303
  Width = 380
  Height = 186
  Caption = 'Balance de facturas.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Desde'
  end
  object Label2: TLabel
    Left = 280
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object RBNumero: TRadioButton
    Left = 24
    Top = 40
    Width = 111
    Height = 17
    Caption = 'N'#250'mero de factura'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = RBNumeroClick
  end
  object RBFecha: TRadioButton
    Left = 24
    Top = 72
    Width = 111
    Height = 17
    Caption = 'Fecha de factura'
    TabOrder = 1
    OnClick = RBFechaClick
  end
  object ENumDesde: TMaskEdit
    Left = 152
    Top = 40
    Width = 84
    Height = 21
    EditMask = '!9999999/99;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '0000000/00'
    OnKeyDown = ENumDesdeKeyDown
    OnKeyPress = ENumDesdeKeyPress
  end
  object ENumHasta: TMaskEdit
    Left = 256
    Top = 40
    Width = 89
    Height = 21
    EditMask = '!0000000/00;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '       /  '
    OnKeyDown = ENumDesdeKeyDown
    OnKeyPress = ENumDesdeKeyPress
  end
  object BImprimir: TButton
    Left = 128
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BImprimirClick
  end
  object BCancelar: TButton
    Left = 272
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BCancelarClick
  end
  object EFecDesde: TDateEdit
    Left = 152
    Top = 72
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
    OnExit = EFecDesdeExit
  end
  object EFecHasta: TDateEdit
    Left = 256
    Top = 72
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 7
    OnExit = EFecHastaExit
  end
  object BVisualizar: TButton
    Left = 24
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 8
    OnClick = BImprimirClick
  end
end
