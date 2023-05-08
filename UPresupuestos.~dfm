object FPresupuestos: TFPresupuestos
  Left = 193
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Presupuestos'
  ClientHeight = 470
  ClientWidth = 665
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
  OnShow = dsPesupuestosStateChange
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 104
    Width = 56
    Height = 13
    Caption = 'Vista Previa'
  end
  object Label2: TLabel
    Left = 16
    Top = 24
    Width = 74
    Height = 13
    Caption = 'Presupuesto N'#186
  end
  object Label3: TLabel
    Left = 136
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label4: TLabel
    Left = 16
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object wwDBEdit1: TwwDBEdit
    Left = 16
    Top = 40
    Width = 113
    Height = 21
    Color = clMoneyGreen
    DataField = 'NumPres'
    DataSource = dsPesupuestos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit4: TwwDBEdit
    Left = 136
    Top = 80
    Width = 377
    Height = 21
    Color = clMoneyGreen
    DataField = 'NomCli'
    DataSource = dsPesupuestos
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBComboDlg1: TwwDBComboDlg
    Left = 16
    Top = 80
    Width = 113
    Height = 21
    OnCustomDlg = wwDBComboDlg1CustomDlg
    ShowButton = True
    Style = csDropDown
    DataField = 'CifCli'
    DataSource = dsPesupuestos
    TabOrder = 2
    WordWrap = False
    UnboundDataType = wwDefault
  end
  object TBPresupuestos: TToolBar
    Left = 0
    Top = 0
    Width = 665
    Height = 29
    Caption = 'TBPresupuestos'
    Images = FPrincipal.Imagenes
    TabOrder = 3
    object BNuevo: TToolButton
      Left = 0
      Top = 2
      Hint = 'Nuevo presupuesto'
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
      Hint = 'Modificar presupuesto'
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
      Hint = 'Eliminar presupuesto'
      AllowAllUp = True
      Caption = 'Eliminar'
      ImageIndex = 2
      OnClick = EliminarClick
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
      Caption = 'ToolButton7'
      ImageIndex = 6
      OnClick = BuscarClick
    end
    object ToolButton8: TToolButton
      Left = 180
      Top = 2
      Width = 13
      Caption = 'ToolButton8'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object BCerrar: TToolButton
      Left = 193
      Top = 2
      Hint = 'Cerrar'
      AllowAllUp = True
      Caption = 'Cerrar'
      ImageIndex = 5
      OnClick = CerrarClick
    end
    object ToolButton6: TToolButton
      Left = 216
      Top = 2
      Width = 285
      Caption = 'ToolButton6'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object Navegador: TDBNavigator
      Left = 501
      Top = 2
      Width = 128
      Height = 22
      DataSource = dsPesupuestos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object ScrollBox1: TScrollBox
    Left = 16
    Top = 128
    Width = 633
    Height = 321
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    TabOrder = 4
    OnMouseDown = OleContainer1MouseDown
    object OleContainer1: TOleContainer
      Left = 0
      Top = 0
      Width = 625
      Height = 313
      AllowInPlace = False
      AllowActiveDoc = False
      AutoActivate = aaManual
      AutoVerbMenu = False
      BorderStyle = bsNone
      Caption = 'Presupuesto'
      SizeMode = smAutoSize
      TabOrder = 0
      OnMouseDown = OleContainer1MouseDown
    end
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'FecPres'
    DataSource = dsPesupuestos
    Date = 37716.000000000000000000
    Epoch = 1950
    ShowButton = True
    TabOrder = 5
  end
  object TPresupuestos: TwwTable
    Active = True
    AfterScroll = TPresupuestosAfterScroll
    OnNewRecord = TPresupuestosNewRecord
    OnPostError = TPresupuestosPostError
    DatabaseName = 'Jardines'
    TableName = 'Presupuestos.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 568
    Top = 136
    object TPresupuestosNumPres: TFloatField
      DisplayLabel = 'N'#186' Presupuesto'
      FieldName = 'NumPres'
      DisplayFormat = '00000000'
    end
    object TPresupuestosFecPres: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FecPres'
    end
    object TPresupuestosCifCli: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CifCli'
      Size = 9
    end
    object TPresupuestosDetPres: TBlobField
      DisplayLabel = 'Detalle'
      FieldName = 'DetPres'
      Size = 100
    end
    object TPresupuestosNomCli: TStringField
      DisplayLabel = 'Nombre Cliente'
      FieldKind = fkLookup
      FieldName = 'NomCli'
      LookupDataSet = TClientes
      LookupKeyFields = 'CifCli'
      LookupResultField = 'NomCli'
      KeyFields = 'CifCli'
      Size = 80
      Lookup = True
    end
  end
  object dsPesupuestos: TwwDataSource
    AutoEdit = False
    DataSet = TPresupuestos
    OnStateChange = dsPesupuestosStateChange
    Left = 528
    Top = 136
  end
  object TClientes: TwwTable
    Active = True
    DatabaseName = 'Jardines'
    TableName = 'clientes.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 568
    Top = 168
    object TClientesCifCli: TStringField
      FieldName = 'CifCli'
      Required = True
      Size = 9
    end
    object TClientesNomCli: TStringField
      FieldName = 'NomCli'
      Required = True
      Size = 80
    end
  end
  object MFacturas: TMainMenu
    Images = FPrincipal.Imagenes
    Left = 592
    Top = 56
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
        OnClick = EliminarClick
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
  object TGeneral: TwwTable
    Active = True
    DatabaseName = 'Jardines'
    TableName = 'general.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 568
    Top = 200
    object TGeneralConPre: TFloatField
      FieldName = 'ConPre'
    end
  end
end
