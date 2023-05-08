object FAlbaranes: TFAlbaranes
  Left = 246
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Albaranes'
  ClientHeight = 460
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MAlbaranes
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
    Left = 328
    Top = 16
    Width = 90
    Height = 13
    Caption = 'N'#250'mero de albar'#225'n'
  end
  object Label4: TLabel
    Left = 472
    Top = 16
    Width = 83
    Height = 13
    Caption = 'Fecha de albar'#225'n'
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
  object TBAlbaranes: TToolBar
    Left = 0
    Top = 0
    Width = 628
    Height = 29
    Caption = 'TBAlbaranes'
    Images = FPrincipal.Imagenes
    TabOrder = 0
    object BNuevo: TToolButton
      Left = 0
      Top = 2
      Hint = 'Nuevo albar'#225'n'
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
      Hint = 'Modificar albar'#225'n'
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
      Hint = 'Eliminar albar'#225'n'
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
    object ToolButton7: TToolButton
      Left = 157
      Top = 2
      Hint = 'Buscar'
      Caption = 'ToolButton7'
      ImageIndex = 6
      OnClick = Buscar1Click
    end
    object ToolButton11: TToolButton
      Left = 180
      Top = 2
      Width = 4
      Caption = 'ToolButton11'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 184
      Top = 2
      Hint = 'Imprimir'
      Caption = 'ToolButton8'
      ImageIndex = 7
      OnClick = ImprimirClick
    end
    object ToolButton10: TToolButton
      Left = 207
      Top = 2
      Width = 15
      Caption = 'ToolButton10'
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
    object ToolButton6: TToolButton
      Left = 245
      Top = 2
      Width = 100
      Caption = 'ToolButton6'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object Navegador: TDBNavigator
      Left = 345
      Top = 2
      Width = 128
      Height = 22
      DataSource = DSAlbaranes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object ToolButton9: TToolButton
      Left = 473
      Top = 2
      Width = 40
      Caption = 'ToolButton9'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object LAnio: TLabel
      Left = 513
      Top = 2
      Width = 88
      Height = 22
      AutoSize = False
      Caption = 'Albaranes del a'#241'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object EAnio: TEdit
      Left = 601
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
  object DBENumAlb: TwwDBEdit
    Left = 328
    Top = 32
    Width = 121
    Height = 19
    TabStop = False
    Color = clMoneyGreen
    Ctl3D = False
    DataField = 'NumAlb'
    DataSource = DSAlbaranes
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
  object DBFecAlb: TwwDBDateTimePicker
    Left = 472
    Top = 32
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'FecAlb'
    DataSource = DSAlbaranes
    Date = 37716.000000000000000000
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
      DataSource = DSAlbaranes
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 8
      Top = 32
      Width = 97
      Height = 21
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      CharCase = ecUpperCase
      DataField = 'CifCli'
      DataSource = DSAlbaranes
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
    DataField = 'ObsAlb'
    DataSource = DSAlbaranes
    TabOrder = 4
  end
  object DBGConceptos: TwwDBGrid
    Left = 32
    Top = 152
    Width = 561
    Height = 137
    DisableThemesInTitle = False
    Selected.Strings = (
      'ConDetAlb'#9'54'#9'Concepto'#9#9
      'CanDetAlb'#9'10'#9'Cantidad'#9#9
      'PreUniDetAlb'#9'10'#9'Precio '#9#9
      'TotDetAlb'#9'10'#9'Total'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = DSDetalleAlb
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
    DataField = 'BasImpAlb'
    DataSource = DSAlbaranes
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
    DataField = 'PorIvaAlb'
    DataSource = DSAlbaranes
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
    DataField = 'ValIvaAlb'
    DataSource = DSAlbaranes
    TabOrder = 8
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBETotalAlbaran: TwwDBEdit
    Left = 472
    Top = 408
    Width = 121
    Height = 21
    Color = clMoneyGreen
    DataField = 'TotAlb'
    DataSource = DSAlbaranes
    TabOrder = 9
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object TAlbaranes: TwwTable
    Active = True
    OnCalcFields = TAlbaranesCalcFields
    OnNewRecord = TAlbaranesNewRecord
    OnPostError = TAlbaranesPostError
    DatabaseName = 'Jardines'
    Filtered = True
    TableName = 'Albaranes.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 208
    Top = 432
    object TAlbaranesNumAlb: TStringField
      FieldName = 'NumAlb'
      Size = 10
    end
    object TAlbaranesCifCli: TStringField
      FieldName = 'CifCli'
      Size = 9
    end
    object TAlbaranesFecAlb: TDateField
      FieldName = 'FecAlb'
    end
    object TAlbaranesObsAlb: TMemoField
      FieldName = 'ObsAlb'
      BlobType = ftMemo
      Size = 100
    end
    object TAlbaranesPorIvaAlb: TFloatField
      FieldName = 'PorIvaAlb'
      DisplayFormat = '#0 %'
      EditFormat = '#0'
    end
    object TAlbaranesBasImpAlb: TFloatField
      FieldName = 'BasImpAlb'
      currency = True
    end
    object TAlbaranesNumLinDet: TFloatField
      FieldName = 'NumLinDet'
    end
    object TAlbaranesValIvaAlb: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValIvaAlb'
      Calculated = True
    end
    object TAlbaranesTotAlb: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotAlb'
      Calculated = True
    end
    object TAlbaranesNomCli: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'NomCli'
      LookupDataSet = TClientes
      LookupKeyFields = 'CifCli'
      LookupResultField = 'NomCli'
      KeyFields = 'CifCli'
      Size = 50
      Lookup = True
    end
  end
  object DSClientes: TwwDataSource
    Left = 152
    Top = 432
  end
  object DSAlbaranes: TwwDataSource
    AutoEdit = False
    DataSet = TAlbaranes
    OnStateChange = DSAlbaranesStateChange
    Left = 240
    Top = 432
  end
  object DSDetalleAlb: TwwDataSource
    DataSet = TDetalleAlb
    Left = 336
    Top = 432
  end
  object TDetalleAlb: TwwTable
    Active = True
    CachedUpdates = True
    BeforeInsert = AlbaranEdit
    BeforeEdit = AlbaranEdit
    BeforePost = TDetalleAlbBeforePost
    AfterPost = TDetalleAlbAfterPost
    BeforeDelete = AlbaranEdit
    AfterDelete = TDetalleAlbAfterDelete
    OnCalcFields = TDetalleAlbCalcFields
    OnNewRecord = TDetalleAlbNewRecord
    OnUpdateError = TDetalleAlbUpdateError
    DatabaseName = 'Jardines'
    IndexFieldNames = 'NumAlb'
    MasterFields = 'NumAlb'
    MasterSource = DSAlbaranes
    TableName = 'DetalleAlb.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 304
    Top = 432
    object TDetalleAlbConDetAlb: TStringField
      DisplayLabel = 'Concepto'
      DisplayWidth = 54
      FieldName = 'ConDetAlb'
      Size = 100
    end
    object TDetalleAlbCanDetAlb: TFloatField
      DisplayLabel = 'Cantidad'
      DisplayWidth = 10
      FieldName = 'CanDetAlb'
    end
    object TDetalleAlbPreUniDetAlb: TFloatField
      DisplayLabel = 'Precio '
      DisplayWidth = 10
      FieldName = 'PreUniDetAlb'
      currency = True
    end
    object TDetalleAlbTotDetAlb: TCurrencyField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TotDetAlb'
      Calculated = True
    end
    object TDetalleAlbNumDetAlb: TFloatField
      DisplayWidth = 10
      FieldName = 'NumDetAlb'
      Visible = False
    end
    object TDetalleAlbNumAlb: TStringField
      FieldName = 'NumAlb'
      Visible = False
      Size = 10
    end
  end
  object MAlbaranes: TMainMenu
    Images = FPrincipal.Imagenes
    Top = 62
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
      object N1: TMenuItem
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
      object N3: TMenuItem
        Caption = '-'
      end
      object Imprimir: TMenuItem
        Caption = 'Imprimir'
        ImageIndex = 7
        OnClick = ImprimirClick
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
    object Buscar1: TMenuItem
      Caption = 'Buscar'
      OnClick = Buscar1Click
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
    object TGeneralConAlb: TFloatField
      FieldName = 'ConAlb'
    end
    object TGeneralAnno: TFloatField
      FieldName = 'Anno'
    end
  end
  object TClientes: TwwTable
    Active = True
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
