object FFacturas: TFFacturas
  Left = 245
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Facturaci'#243'n'
  ClientHeight = 459
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MFacturas
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 344
    Top = 16
    Width = 88
    Height = 13
    Caption = 'N'#250'mero de factura'
  end
  object Label4: TLabel
    Left = 472
    Top = 16
    Width = 81
    Height = 13
    Caption = 'Fecha de factura'
  end
  object Label5: TLabel
    Left = 32
    Top = 136
    Width = 51
    Height = 13
    Caption = 'Conceptos'
  end
  object Label6: TLabel
    Left = 32
    Top = 296
    Width = 71
    Height = 13
    Caption = 'Observaciones'
  end
  object Label7: TLabel
    Left = 32
    Top = 392
    Width = 71
    Height = 13
    Caption = 'Base imponible'
  end
  object Label8: TLabel
    Left = 176
    Top = 392
    Width = 26
    Height = 13
    Caption = 'I.V.A.'
  end
  object Label9: TLabel
    Left = 256
    Top = 392
    Width = 53
    Height = 13
    Caption = 'Total I.V.A.'
  end
  object Label10: TLabel
    Left = 472
    Top = 392
    Width = 63
    Height = 13
    Caption = 'Total Factura'
  end
  object LEstado: TLabel
    Left = 121
    Top = 34
    Width = 17
    Height = 13
    Caption = '    '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TBFacturas: TToolBar
    Left = 0
    Top = 0
    Width = 625
    Height = 29
    Caption = 'TBFacturas'
    Images = FPrincipal.Imagenes
    TabOrder = 0
    object BNuevo: TToolButton
      Left = 0
      Top = 2
      Hint = 'Nueva factura'
      AllowAllUp = True
      Caption = 'Nueva'
      ImageIndex = 0
      OnClick = NuevaClick
    end
    object ToolButton1: TToolButton
      Left = 23
      Top = 2
      Width = 4
      Caption = 'ToolButton1'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object BModificar: TToolButton
      Left = 27
      Top = 2
      Hint = 'Modificar factura'
      AllowAllUp = True
      Caption = 'Modificar'
      ImageIndex = 1
      OnClick = ModificarClick
    end
    object ToolButton2: TToolButton
      Left = 50
      Top = 2
      Width = 4
      Caption = 'ToolButton2'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object BEliminar: TToolButton
      Left = 54
      Top = 2
      Hint = 'Eliminar factura'
      AllowAllUp = True
      Caption = 'Eliminar'
      ImageIndex = 2
      OnClick = BEliminarClick
    end
    object ToolButton3: TToolButton
      Left = 77
      Top = 2
      Width = 15
      Caption = 'ToolButton3'
      ImageIndex = 8
      Style = tbsDivider
    end
    object BGuardar: TToolButton
      Left = 92
      Top = 2
      Hint = 'Guardar'
      AllowAllUp = True
      Caption = 'Guardar'
      ImageIndex = 3
      OnClick = GuardarClick
    end
    object ToolButton4: TToolButton
      Left = 115
      Top = 2
      Width = 4
      Caption = 'ToolButton4'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object BCancelar: TToolButton
      Left = 119
      Top = 2
      Hint = 'Cancelar'
      AllowAllUp = True
      Caption = 'Cancelar'
      ImageIndex = 4
      OnClick = CancelarClick
    end
    object ToolButton5: TToolButton
      Left = 142
      Top = 2
      Width = 15
      Caption = 'ToolButton5'
      ImageIndex = 10
      Style = tbsDivider
    end
    object BBuscar: TToolButton
      Left = 157
      Top = 2
      Hint = 'Buscar'
      Caption = 'BBuscar'
      ImageIndex = 6
      OnClick = BuscarClick
    end
    object ToolButton10: TToolButton
      Left = 180
      Top = 2
      Width = 4
      Caption = 'ToolButton10'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object BImprimir: TToolButton
      Left = 184
      Top = 2
      Hint = 'Imprimir'
      Caption = 'BImprimir'
      ImageIndex = 7
      OnClick = BImprimirClick
    end
    object ToolButton9: TToolButton
      Left = 207
      Top = 2
      Width = 15
      Caption = 'ToolButton9'
      ImageIndex = 7
      Style = tbsDivider
    end
    object BCerrar: TToolButton
      Left = 222
      Top = 2
      Hint = 'Cerrar'
      AllowAllUp = True
      Caption = 'Cerrar'
      ImageIndex = 5
      OnClick = CerrarClick
    end
    object ToolButton8: TToolButton
      Left = 245
      Top = 2
      Width = 101
      Caption = 'ToolButton8'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object Navegador: TDBNavigator
      Left = 346
      Top = 2
      Width = 128
      Height = 22
      DataSource = DSFacturas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object ToolButton6: TToolButton
      Left = 474
      Top = 2
      Width = 40
      Caption = 'ToolButton6'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object LAnio: TLabel
      Left = 514
      Top = 2
      Width = 88
      Height = 22
      AutoSize = False
      Caption = 'Facturas del a'#241'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object EAnio: TEdit
      Left = 602
      Top = 2
      Width = 41
      Height = 22
      MaxLength = 4
      TabOrder = 1
      Text = 'EAnio'
      Visible = False
      OnChange = EAnioChange
    end
  end
  object DBENumFac: TwwDBEdit
    Left = 344
    Top = 32
    Width = 121
    Height = 19
    Color = clMoneyGreen
    Ctl3D = False
    DataField = 'NumFac'
    DataSource = DSFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBFecFac: TwwDBDateTimePicker
    Left = 472
    Top = 32
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'FecFac'
    DataSource = DSFacturas
    Date = 38082.000000000000000000
    Epoch = 1950
    ShowButton = True
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 64
    Width = 561
    Height = 65
    Caption = 'Cliente'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 64
      Height = 13
      Caption = 'C.I.F. / D.N.I.'
    end
    object Label2: TLabel
      Left = 112
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object DBENombre: TwwDBEdit
      Left = 112
      Top = 32
      Width = 441
      Height = 21
      Color = clMoneyGreen
      DataField = 'NomCli'
      DataSource = DSFacturas
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object ECifCli: TwwDBComboDlg
      Left = 8
      Top = 32
      Width = 97
      Height = 21
      OnCustomDlg = ECifCliCustomDlg
      AutoEnableEdit = False
      ShowButton = True
      Style = csDropDown
      CharCase = ecUpperCase
      DataField = 'CifCli'
      DataSource = DSFacturas
      TabOrder = 1
      WordWrap = False
      UnboundDataType = wwDefault
    end
  end
  object DBMObservaciones: TDBMemo
    Left = 32
    Top = 312
    Width = 561
    Height = 65
    DataField = 'ObsFac'
    DataSource = DSFacturas
    TabOrder = 4
  end
  object DBGConceptos: TwwDBGrid
    Left = 32
    Top = 152
    Width = 561
    Height = 137
    DisableThemesInTitle = False
    Selected.Strings = (
      'ConDetFac'#9'51'#9'Concepto'
      'CanDetFac'#9'7'#9'Unidades'
      'PreUniDetFac'#9'11'#9'Precio'
      'TotDetFac'#9'15'#9'Total')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = DSDetalleFac
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnKeyDown = DBGConceptosKeyDown
    OnKeyPress = DBGConceptosKeyPress
    FooterCellColor = clMoneyGreen
  end
  object DBEBasImp: TwwDBEdit
    Left = 32
    Top = 408
    Width = 121
    Height = 21
    Color = clMoneyGreen
    DataField = 'BasImpFac'
    DataSource = DSFacturas
    TabOrder = 6
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBEIva: TwwDBEdit
    Left = 176
    Top = 408
    Width = 65
    Height = 21
    DataField = 'PorIvaFac'
    DataSource = DSFacturas
    MaxLength = 2
    TabOrder = 7
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBETotalIva: TwwDBEdit
    Left = 256
    Top = 408
    Width = 121
    Height = 21
    Color = clMoneyGreen
    DataField = 'ValIvaFac'
    DataSource = DSFacturas
    TabOrder = 8
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBETotalFactura: TwwDBEdit
    Left = 472
    Top = 408
    Width = 121
    Height = 21
    Color = clMoneyGreen
    DataField = 'TotFac'
    DataSource = DSFacturas
    TabOrder = 9
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object TFacturas: TwwTable
    Active = True
    AfterScroll = TFacturasAfterScroll
    OnCalcFields = TFacturasCalcFields
    OnNewRecord = TFacturasNewRecord
    OnPostError = TFacturasPostError
    DatabaseName = 'Jardines'
    Filtered = True
    TableName = 'Facturas.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 208
    Top = 432
    object TFacturasNumFac: TStringField
      FieldName = 'NumFac'
      Size = 10
    end
    object TFacturasCifCli: TStringField
      FieldName = 'CifCli'
      Size = 9
    end
    object TFacturasNomCli: TStringField
      FieldKind = fkLookup
      FieldName = 'NomCli'
      LookupDataSet = TClientes
      LookupKeyFields = 'CifCli'
      LookupResultField = 'NomCli'
      KeyFields = 'CifCli'
      Size = 50
      Lookup = True
    end
    object TFacturasFecFac: TDateField
      FieldName = 'FecFac'
    end
    object TFacturasObsFac: TMemoField
      FieldName = 'ObsFac'
      BlobType = ftMemo
      Size = 100
    end
    object TFacturasPorIvaFac: TFloatField
      FieldName = 'PorIvaFac'
      DisplayFormat = '#0 %'
      EditFormat = '#0'
    end
    object TFacturasBasImpFac: TCurrencyField
      FieldName = 'BasImpFac'
    end
    object TFacturasTotFac: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotFac'
      Calculated = True
    end
    object TFacturasNumLinDet: TFloatField
      FieldName = 'NumLinDet'
    end
    object TFacturasValIvaFac: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValIvaFac'
      Calculated = True
    end
    object TFacturasEstFac: TStringField
      FieldName = 'EstFac'
      Size = 1
    end
  end
  object DSClientes: TwwDataSource
    Left = 152
    Top = 432
  end
  object DSFacturas: TwwDataSource
    AutoEdit = False
    DataSet = TFacturas
    OnStateChange = DSFacturasStateChange
    Left = 232
    Top = 432
  end
  object DSDetalleFac: TwwDataSource
    DataSet = TDetalleFac
    Left = 336
    Top = 432
  end
  object TDetalleFac: TwwTable
    Active = True
    CachedUpdates = True
    BeforeInsert = FacturaEdit
    BeforeEdit = FacturaEdit
    BeforePost = TDetalleFacBeforePost
    AfterPost = TDetalleFacAfterPost
    BeforeDelete = FacturaEdit
    AfterDelete = TDetalleFacAfterDelete
    OnCalcFields = TDetalleFacCalcFields
    OnNewRecord = TDetalleFacNewRecord
    OnUpdateError = TDetalleFacUpdateError
    DatabaseName = 'Jardines'
    IndexFieldNames = 'NumFac'
    MasterFields = 'NumFac'
    MasterSource = DSFacturas
    TableName = 'DetalleFac.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 304
    Top = 432
    object TDetalleFacConDetFac: TStringField
      DisplayLabel = 'Concepto'
      DisplayWidth = 51
      FieldName = 'ConDetFac'
      Size = 100
    end
    object TDetalleFacCanDetFac: TFloatField
      DisplayLabel = 'Unidades'
      DisplayWidth = 7
      FieldName = 'CanDetFac'
    end
    object TDetalleFacPreUniDetFac: TFloatField
      DisplayLabel = 'Precio'
      DisplayWidth = 11
      FieldName = 'PreUniDetFac'
      currency = True
    end
    object TDetalleFacTotDetFac: TCurrencyField
      DisplayLabel = 'Total'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'TotDetFac'
      Calculated = True
    end
    object TDetalleFacNumDetFac: TFloatField
      DisplayWidth = 10
      FieldName = 'NumDetFac'
      Visible = False
    end
    object TDetalleFacNumFac: TStringField
      FieldName = 'NumFac'
      Visible = False
      Size = 10
    end
  end
  object MFacturas: TMainMenu
    Images = FPrincipal.Imagenes
    Top = 40
    object Acciones1: TMenuItem
      Caption = 'Operaciones'
      object Nueva: TMenuItem
        Caption = 'Nueva'
        ImageIndex = 0
        OnClick = NuevaClick
      end
      object Modificar: TMenuItem
        Caption = 'Modificar'
        ImageIndex = 1
        OnClick = ModificarClick
      end
      object Eliminar: TMenuItem
        Caption = 'Eliminar'
        ImageIndex = 2
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Guardar: TMenuItem
        Caption = 'Guardar'
        ImageIndex = 3
        OnClick = GuardarClick
      end
      object Cancelar: TMenuItem
        Caption = 'Cancelar'
        ImageIndex = 4
        OnClick = CancelarClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Imprimir: TMenuItem
        Caption = 'Imprimir'
        ImageIndex = 7
        OnClick = BImprimirClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Cerrar: TMenuItem
        Caption = 'Cerrar'
        ImageIndex = 5
        OnClick = CerrarClick
      end
    end
    object Buscar: TMenuItem
      Caption = 'Buscar'
      OnClick = BuscarClick
    end
  end
  object wwDataSource1: TwwDataSource
    Left = 32
    Top = 432
  end
  object TGeneral: TwwTable
    Active = True
    DatabaseName = 'Jardines'
    TableName = 'general.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Top = 432
    object TGeneralConFac: TFloatField
      FieldName = 'ConFac'
    end
    object TGeneralAnno: TFloatField
      FieldName = 'Anno'
    end
  end
  object TClientes: TwwTable
    Active = True
    AfterScroll = TFacturasAfterScroll
    DatabaseName = 'Jardines'
    IndexFieldNames = 'CifCli'
    TableName = 'clientes.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 120
    Top = 432
    object TClientesCifCli: TStringField
      DisplayLabel = 'D.N.I. / C.I.F.'
      DisplayWidth = 13
      FieldName = 'CifCli'
      Required = True
      Size = 9
    end
    object TClientesNomCli: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 85
      FieldName = 'NomCli'
      Required = True
      Size = 80
    end
  end
end
