object FPrincipal: TFPrincipal
  Left = 227
  Top = 104
  Width = 732
  Height = 626
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Trax & Pasx programaci'#243'n.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MPrincipal
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TBPrincipal: TToolBar
    Left = 0
    Top = 0
    Width = 724
    Height = 29
    Caption = 'TBPrincipal'
    Images = Imagenes
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Hint = 'Datos de la empresa'
      Caption = 'ToolButton1'
      ImageIndex = 13
      OnClick = DatosdelaempresaClick
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 2
      Width = 15
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsDivider
    end
    object ToolButton3: TToolButton
      Left = 38
      Top = 2
      Hint = 'Clientes'
      Caption = 'ToolButton3'
      ImageIndex = 12
      OnClick = Clientes1Click
    end
    object ToolButton4: TToolButton
      Left = 61
      Top = 2
      Width = 15
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsDivider
    end
    object ToolButton5: TToolButton
      Left = 76
      Top = 2
      Hint = 'Facturas'
      Caption = 'ToolButton5'
      ImageIndex = 9
      OnClick = FacturasClick
    end
    object ToolButton13: TToolButton
      Left = 99
      Top = 2
      Width = 4
      Caption = 'ToolButton13'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 103
      Top = 2
      Hint = 'Hist'#243'rico de facturaci'#243'n'
      Caption = 'ToolButton6'
      ImageIndex = 8
      OnClick = HistoricoFacClick
    end
    object ToolButton7: TToolButton
      Left = 126
      Top = 2
      Width = 15
      Caption = 'ToolButton7'
      ImageIndex = 4
      Style = tbsDivider
    end
    object ToolButton8: TToolButton
      Left = 141
      Top = 2
      Hint = 'Albaranes'
      Caption = 'ToolButton8'
      ImageIndex = 10
      OnClick = AlbaranesClick
    end
    object ToolButton15: TToolButton
      Left = 164
      Top = 2
      Width = 4
      Caption = 'ToolButton15'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object ToolButton14: TToolButton
      Left = 168
      Top = 2
      Hint = 'Hist'#243'rico de Albaranes'
      Caption = 'ToolButton14'
      ImageIndex = 14
      OnClick = HistricodeAlbaranes1Click
    end
    object ToolButton9: TToolButton
      Left = 191
      Top = 2
      Width = 15
      Caption = 'ToolButton9'
      ImageIndex = 5
      Style = tbsDivider
    end
    object ToolButton10: TToolButton
      Left = 206
      Top = 2
      Hint = 'Presupuestos'
      Caption = 'ToolButton10'
      ImageIndex = 11
      OnClick = Presupuestos1Click
    end
    object ToolButton11: TToolButton
      Left = 229
      Top = 2
      Width = 15
      Caption = 'ToolButton11'
      ImageIndex = 6
      Style = tbsDivider
    end
    object ToolButton12: TToolButton
      Left = 244
      Top = 2
      Hint = 'Terminar la aplicaci'#243'n'
      Caption = 'ToolButton12'
      ImageIndex = 5
      OnClick = Salir1Click
    end
  end
  object MPrincipal: TMainMenu
    Top = 32
    object Generales1: TMenuItem
      Caption = 'Generales'
      object Datosdelaempresa: TMenuItem
        Caption = 'Datos de la empresa'
        OnClick = DatosdelaempresaClick
      end
    end
    object Clientes1: TMenuItem
      Caption = 'Clientes'
      OnClick = Clientes1Click
    end
    object Facturacion: TMenuItem
      Caption = 'Facturaci'#243'n'
      object Facturas: TMenuItem
        Caption = 'Facturas'
        OnClick = FacturasClick
      end
      object HistoricoFac: TMenuItem
        Caption = 'Hist'#243'rico de Facturaci'#243'n'
        OnClick = HistoricoFacClick
      end
      object BalanceFac: TMenuItem
        Caption = 'Balance de facturaci'#243'n'
        OnClick = BalanceFacClick
      end
    end
    object Albaranes: TMenuItem
      Caption = 'Albaranes'
      object Albaranes1: TMenuItem
        Caption = 'Albaranes'
        OnClick = AlbaranesClick
      end
      object HistricodeAlbaranes1: TMenuItem
        Caption = 'Hist'#243'rico de Albaranes'
        OnClick = HistricodeAlbaranes1Click
      end
    end
    object Presupuestos1: TMenuItem
      Caption = 'Presupuestos'
      OnClick = Presupuestos1Click
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      OnClick = Salir1Click
    end
    object Acercade1: TMenuItem
      Caption = 'Acerca de...'
      OnClick = Acercade1Click
    end
  end
  object Imagenes: TImageList
    Left = 48
    Top = 32
    Bitmap = {
      494C01010F001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001001000000000000028
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      FF7F000000000000007C0040007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001000100010001F001F001F00
      1F00100010001F001F0010000000000000000000EF3D000000000000FF7FFF7F
      0000000000000000007C0040007C000000420000000000000000000000000000
      000000000000F75E000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000010001F001F001F001F001000
      10000000104210001F000000000000000000EF3D0000FF7FFF7FFF7FFF7F0000
      0000000000000000007C0040007C004200420000000000000000E07FE07FE07F
      E07FE07F00000000F75E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010001000000000000000
      0000000010420000000000000000000000000000FF7F00000000FF7FFF7F0000
      0000000000000000007C0040007C004200420000000000000000E07F00000000
      0000E07F000000420000F75E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000104200000000000000000000000000000000000000000000FF7F0000
      0000000000000000007C0040007C004200000000000000000000E07FE07FE07F
      E07FE07F00000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1863186318631863186300000000000000000000EF3D000000000000FF7F0000
      000000000000007C007C007C007C007C00000000000000000000E07FE07FE07F
      E07FE07F00000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF3D0000FF7F0000EF3D
      0000000000000040004000400040004000000000000000000000000000000000
      00000000007C007C004200000000007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3D0000
      0000000000420042004200000000000000000000000000000000E07FE07FE07F
      E07FE07F007C007C004200000000007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018631863000000000000000000000000000000000000
      0000004200420042000000000000000000000000000000000000E07F00000000
      0000E07F007C007C004200000000007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000001F0018630000000000000000000000000000000000000000
      0042004200420000000000000000000000000000000000000000E07FE07FE07F
      E07FE07F007C007C007C007C007C007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      0042004200000000000000000000000000000000000000000000E07FE07FE07F
      E07FE07F007C007C007C007C007C007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018630000000000000000000000000000000000420042
      0042000000000000000000000000000000000000000000000000000000000000
      00000000007C007C004200000000007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018630000000000000000000000000000000000000042
      0000000000000000EF3D0000EF3D00000000000000000000EF3DEF3DEF3DEF3D
      EF3D0000007C007C004200000000007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF3D0000EF3D0000000000000000000000000000E07F0042
      E07F00420000007C007C0000007C007C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      EF3D000000000000EF3D0000EF3D000000000000000000000000000000000000
      0042E07FEF3D007C007C007C007C007C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420042000000000000
      000000000000000000000000000000000000000000000000000000000000EF3D
      00000000000000000000007C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      000000000000F75E000000000000000000000000FF7FE07FFF7FE07FFF7FE07F
      000000000000FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FE07FFF7FE07FFF7FE07F
      000000000000FF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000FF7FFF7FFF7FFF7F
      0000186300000000FF7FFF7FFF7FFF7FFF7F0000000000000000E07FE07FE07F
      E07FE07F00000000F75E00000000000000000000E07FFF7FE07F000000000000
      E07FFF7F00000000FF7FFF7FFF7FFF7FFF7F0000E07FFF7FE07F000000000000
      E07FFF7F00000000FF7FFF7FFF7FFF7FFF7F0000FF7F0000FF7FFF03FF030000
      18630000186300000000FF03FF03FF03FF7F0000000000000000E07F00000000
      0000E07F000000420000F75E0000000000000000FF7FE07F1042000010420000
      0000E07FFF7F00000000FF7FFF7FFF7FFF7F0000FF7FE07F1042000010420000
      0000E07FFF7F00000000FF7FFF7FFF7FFF7F0000FF7F0000FF7FFF7F00001863
      0000FF7F000018630000FF7FFF7FFF7FFF7F0000000000000000E07FE07FE07F
      E07FE07F00000042004200000000000000000000E07F10420000FF7F10421042
      0000104210421042000000000000FF7FFF7F0000E07F10420000FF7F10421042
      0000104210421042000000000000FF7FFF7F0000FF7F0000FF7FFF7F00001863
      0000FF7F000018630000FF7FFF7FFF7FFF7F0000000000000000E07FE07FE07F
      E07FE07F007C007C004200000000000000000000FF7F10420000E07FFF7F1042
      0000E07FFF7FE07FFF7FE07F0000FF7FFF7F0000FF7F10420000E07FFF7F1042
      0000E07FFF7FE07FFF7FE07F0000FF7FFF7F0000FF7F0000FF7FFF0300001863
      0000FF03000018630000FF03FF03FF03FF7F0000000000000000000000000000
      00000000007C007C004200000000000000000000E07F10420000FF7FE07F1042
      0000FF7FE07FFF7FE07FFF7F0000FF7FFF7F0000E07F10420000FF7FE07F1042
      0000007C007CFF7FE07FFF7F007C007CFF7F0000FF7F0000FF7FFF7F00001863
      0000FF7F000018630000FF7FFF7FFF7FFF7F0000000000000000E07FE07FE07F
      E07FE07F007C007C004200000000000000000000FF7F10420000E07FFF7F1042
      0000E07F007C007CFF7FE07F0000FF7FFF7F0000FF7F10420000E07FFF7F1042
      0000007C007CFF7FFF7FE07F007C007CFF7F0000FF7F0000FF7FFF7F00001863
      0000FF7F000018630000FF7FFF7FFF7FFF7F0000000000000000E07F00000000
      0000E07F007C007C004200000000000000000000E07F10420000FF7F10421042
      00001042007C007C104210420000FF7FFF7F0000E07F10420000FF7F10421042
      0000007C007C104210421042007C007CFF7F007C007C0000FF7FFF7F00001863
      0000FF7F000018630000FF7FFF7FFF7FFF7F0000000000000000E07FE07FE07F
      E07FE07F007C007C007C007C007C000000000000FF7F10420000E07FFF7F1042
      0000E07F007C007CFF7FE07F0000FF7FFF7F0000FF7F10420000E07FFF7F1042
      0000007C007C007C007C007C007C007CFF7F007C007C0000FF7FFF0300001863
      0000FF03000018630000FF03FF03FF03FF7F0000000000000000E07FE07FE07F
      E07FE07F007C007C007C007C007C000000000000E07F10420000FF7FE07FFF7F
      0000FF7F007C007CE07FFF7F0000FF7FFF7F0000E07F10420000FF7FE07FFF7F
      0000007C007CFF7FE07FFF7F007C007CFF7F007C007C0000FF7FFF7F00000000
      0000FF7F000018630000FF7FFF7FFF7FFF7F0000000000000000000000000000
      00000000007C007C004200000000000000000000FF7F10420000E07FFF7FE07F
      FF7FE07F007C007C007C007C007CFF7FFF7F0000FF7F10420000E07FFF7FE07F
      FF7FE07F007C007CFF7F007C007CFF7FFF7F007C007C0000FF7FFF7FFF7FFF7F
      FF7FFF7F000018630000FF7FFF7FFF7FFF7F000000000000EF3DEF3DEF3DEF3D
      EF3DEF3D007C007C000000000000000000000000000000000000000000000000
      00000000007C007C007C007C007CFF7FFF7F0000000000000000000000000000
      00000000007C007C007C007C007CFF7FFF7F007C007C007C007C000000000000
      00000000000018630000000000000000000000000000000000000000E07F0042
      E07F0042007C007C007C007C007C007C0000FF7FFF7F10420000FF7FFF7F0000
      FF7FFF7F007C007CFF7FFF7FFF7FFF7FFF7FFF7FFF7F10420000FF7FFF7F0000
      FF7FFF7FFF7F007C007C007CFF7FFF7FFF7F007C007CFF7F007C007C00001863
      00000000000018630000FF7FFF7FFF7FFF7F0000000000000000000000000000
      0042E07F007C007C007C007C007C007C0000FF7FFF7F1042000000000000FF7F
      FF7FFF7F007C007C007C007C007C007CFF7FFF7FFF7F1042000000000000FF7F
      FF7FFF7FFF7FFF7F007CFF7FFF7FFF7FFF7F007C007CFF7F007C007CFF7F0000
      1863186318630000FF7FFF7FFF7FFF7FFF7F000000000000000000000000EF3D
      000000000000000000000000000000000000FF7FFF7F104210421042FF7FFF7F
      FF7FFF7F007C007C007C007C007C007CFF7FFF7FFF7F104210421042FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F007C007C007C007CFF7FFF7FFF7F
      000000000000FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007C007C
      007C007C007C0000000000000000000000000000000000000040E07FE07FE07F
      E07FE07FE07FE07FE07F00000000000000000000000000000000000000000000
      0000000000001F00FF0300000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E0000000000000000007C007C007C007C
      007C007C007C007C007C000000000000000000000000000000400040E07FE07F
      E07FE07FE07FE07FE07F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F1F00FF031F001042FF7F186300000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000007C007C000000000000
      000000000000007C007C007C000000000000000000000000004000400040E07F
      E07FE07FE07FE07FE07F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7F1F00FF031F001042FF7FFF7F186300000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C007C00000000
      0000000000000000007C007C007C000000000000000000000040004000400000
      E07FE07FE07FE07FE07F0000000000000000000000000000FF7FFF7FFF7FFF7F
      1F00FF031F001042FF7FFF7FFF7F186300000000FF7FF75EFF7FF75EFF7FF75E
      FF7FF75EFF7FF75EFF7FF75EFF7FF75E00000000007C0000007C007C007C0000
      00000000000000000000007C007C000000000000000000000040004000400000
      E07FE07FE07FE07FE07F0000000000000000000000000000FF7FFF7FFF7F1863
      FF031F001042FF7FFF7FFF7FFF7F186300000000F75EFF7FF75EFF7FF75EFF7F
      F75EFF7FF75EFF7FF75EFF7F007CFF7F0000007C007C00000000007C007C007C
      000000000000000000000000007C007C00000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000000010021002100200001863
      10421042FF7FFF7FFF7FFF7FFF7F186300000000FF7FF75EFF7FF75EFF7FF75E
      FF7FF75EFF7FF75EFF7FF75EFF7FF75E0000007C007C000000000000007C007C
      007C00000000000000000000007C007C00000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000001042FF031863FF03104210421002
      1042FF7FFF7FFF7FFF7FFF7FFF7F186300000000000000000000000000000000
      000000000000000000000000000000000000007C007C0000000000000000007C
      007C007C0000000000000000007C007C00000000000000000040004000400000
      E07FE07FE07FE07FE07F0000000000000000FF03FF031863FF03104210421042
      0000FF7FFF7FFF7FFF7FFF7FFF7F186300000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000007C007C00000000000000000000
      007C007C007C000000000000007C007C00000000000000000040004000400000
      E07FE07FE07FE07FE07F0000000000000000FF03FF031863FF03104210421042
      0000FF7FFF7FFF7FFF7FFF7FFF7F186300000000000000000000FF7F00000000
      00000000FF7F0000FF7F0000000000000000007C007C00000000000000000000
      0000007C007C007C00000000007C007C0000000000000000004000400040E07F
      0000E07FE07FE07FE07F0000000000000000FF03FF031863FF03FF03FF03FF03
      0000FF7FFF7FFF7FFF7FFF7FFF7F186300000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000007C007C0000000000000000
      00000000007C007C007C0000007C000000000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000001042FF031863FF03FF03FF031002
      1042FF7FFF7FFF7FFF7FFF7FFF7F186300000000000000000000FF7F00000000
      FF7F000000000000000000000000000000000000007C007C007C000000000000
      000000000000007C007C007C007C000000000000000000000040004000400000
      E07FE07FE07FE07FE07F0000000000000000000010421863FF03FF0300001042
      FF7FFF7FFF7FFF7F104200000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7FFF7F0000000000000000000000000000007C007C007C00000000
      0000000000000000007C007C0000000000000000000000000040FF0300400000
      E07FE07FE07FE07FE07F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F1042FF7F1042000000000000000000000000FF7F0000F75E
      FF7F0000FF7F000000000000000000000000000000000000007C007C007C007C
      007C007C007C007C007C00000000000000000000000000000040FF03FF030000
      E07FE07FE07FE07FE07F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F104210420000000000000000000000000000FF7FFF7FFF7F
      FF7F0000000000000000000000000000000000000000000000000000007C007C
      007C007C007C0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000082100000000
      8410841000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000084109452FF7F7B6F7B6F
      9452734E000084100000000000000000000000000000000000000000EF3DEF3D
      EF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000FF7FFF7F0000FF7F00000000FF7F00000000000094527B6FFF7F94527B6F
      CE399452CE3900008410841000000000000000000000000000000000EF3DF75E
      F75EF75EF75EF75EF75E00000000000000000000000000000000FF7F00000000
      00000000FF7FFF7FFF7F0000000000000000FF0300000000E07FFF7FE07FFF7F
      E07F0000FF7FFF7FFF7FFF7FFF7FFF7F00000000000094529452FF7F94527B6F
      CE399452841000008410841084108410000000000000000000000000EF3DF75E
      00000000F75EF75EF75E00000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000FF030000E07FFF7FE07FFF7F0000
      00000000FF7FFF7FFF7FFF7F0000FF7F00000000000094529452FF7F94527B6F
      CE399452841000008410841084108410000000000000000000000000EF3DF75E
      00000000F75EF75EF75E00000000000000000000000000000000FF7F00000000
      0000000000000000FF7F0000000000000000FF030000FF7FE07FFF7FE07FFF7F
      E07FFF7F0000FF7F00000000FF7FFF7F00000000000094529452FF7F94527B6F
      CE399452841000008410841084108410000000000000000000000000EF3DF75E
      F75EF75EF75EF75EF75E00000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000FF030000E07FFF7FE07FFF7F0000
      0000000000000000E07F0000FF7FFF7F00000000000094529452FF7F94527B6F
      CE39945284100000841084108410000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7F00000000
      0000000000000000FF7F0000000000000000FF030000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7F0000FF7FFF7FFF7F00000000000094529452FF7F94527B6F
      CE39945284100000841000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000FF030000E07FFF7F000000000000
      0000000000000000FF7FFF7FFF7FFF7F000000000000945294527B6F7B6F1863
      734ECE39CE39000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000FF7F00000000
      0000FF7FFF7FFF7FFF7F0000000000000000000000000000E07FFF7FE07F0000
      0000E07F0000FF7FFF7F00000000FF7F000000000000CE394A297B6F7B6F9452
      734E4A298410000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      E07F0000FF7FFF7FFF7FFF7FFF7FFF7F0000000008217B6F7B6F18631863734E
      CE39CE39CE39082100000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000FF7F00000000
      FF7FFF7F0000FF7F00000000000000000000000000000000000000000000E07F
      0000FF7FFF7FFF7FFF7F000000000000000000000821734EFF7FFF7FFF7F7B6F
      18639452734E082100000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7F000000000000000000000000000000000000000000000000E07F0000
      FF7FFF7F00000000FF7F0000FF7FFF7F0000000008217B6FFF7FFF7FFF7FFF7F
      0821CE399452CE3900000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E07F00000000
      FF7FFF7FFF7FFF7FFF7F0000FF7F000000000000000008217B6FFF7F84101863
      734E9452734E000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C000000000000
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000082108210821
      000008210000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C007C007C
      007C007C007C007C007C0000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E00FF862C01F0000000380E0C00F0000
      008301E0E00700008F8F01E0E0030000CF9F31E1E0030000F60731C1E0070000
      F3F7C181E0040000C3F3C307E0040000C7F1FE17E004000083E3CC37E0000000
      80E3A877E0000000803340F7C0040000C01301E3C0040000E007C1E3E0010000
      F00FC0E3F8010000FC3FC83FFC030000C01FFF00FF008000C00F81C081C0A160
      E0078E608E60A2B0E0038B308B30A550E003911C911CA550E00791049104A550
      E00791049100A550E00791049100A550E007910491002550E003910491002550
      E003910491002750C007900090002050C007FF80FF800FDFE0011200120005D0
      F8011C001C000220FC030000000001C0FFFFC007FFEF8001F83FC007E0010000
      E00FC007E0010000CFC7C007E001000087E3C007E0010000A3F3C007E0010000
      31F9C0078001000038F9C007000100003C79C0070001E0073E39C0070001E007
      3F19C0070001E0079F8BC0070001E0078FC3C0078001E00FC7E7C007E003E01F
      E00FC007E007E03FF83FC007E00FE07FFFFFFC00F07FFFFFE007FC00C01F8003
      E0072000C0070001E0070000C0010001E0070000C0010001E0070000C0010001
      E0070000C0030001E0070000C00F0001E0070000C01F0001E0070000C01F0001
      E007E000801F0001E00FF800801F0001E01FF000801F0001E03FE001C01F0001
      FFFFC403F07F0001FFFFEC07FDFF800300000000000000000000000000000000
      000000000000}
  end
  object TG: TwwTable
    DatabaseName = 'Jardines'
    TableName = 'general.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 88
    Top = 32
    object TGCifEmp: TStringField
      FieldName = 'CifEmp'
      Size = 9
    end
    object TGNomEmp: TStringField
      FieldName = 'NomEmp'
      Size = 80
    end
    object TGDirEmp: TStringField
      FieldName = 'DirEmp'
      Size = 50
    end
    object TGCp: TFloatField
      FieldName = 'Cp'
    end
    object TGPobEmp: TStringField
      FieldName = 'PobEmp'
      Size = 50
    end
    object TGProEmp: TStringField
      FieldName = 'ProEmp'
      Size = 30
    end
    object TGTel1Emp: TFloatField
      FieldName = 'Tel1Emp'
    end
    object TGTel2Emp: TFloatField
      FieldName = 'Tel2Emp'
    end
    object TGFaxEmp: TFloatField
      FieldName = 'FaxEmp'
    end
    object TGEmaEmp: TStringField
      FieldName = 'EmaEmp'
      Size = 80
    end
    object TGWeb: TStringField
      FieldName = 'Web'
      Size = 80
    end
    object TGAnno: TFloatField
      FieldName = 'Anno'
    end
    object TGConFac: TFloatField
      FieldName = 'ConFac'
    end
    object TGConAlb: TFloatField
      FieldName = 'ConAlb'
    end
    object TGConPre: TFloatField
      FieldName = 'ConPre'
    end
  end
end