object FCopSeg: TFCopSeg
  Left = 286
  Top = 242
  BorderStyle = bsDialog
  Caption = 'Copias de seguridad'
  ClientHeight = 291
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 409
    Height = 273
    ActivePage = TabSheet1
    Align = alCustom
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Realizar copia'
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 88
        Height = 13
        Caption = 'Archivo de destino'
      end
      object Label3: TLabel
        Left = 8
        Top = 88
        Width = 56
        Height = 13
        Caption = 'Descripcion'
      end
      object SpeedButton1: TSpeedButton
        Left = 104
        Top = 0
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object LFileName: TLabel
        Left = 8
        Top = 32
        Width = 385
        Height = 49
        AutoSize = False
        Caption = '(Ninguno)'
      end
      object EDesc: TEdit
        Left = 8
        Top = 104
        Width = 385
        Height = 21
        AutoSize = False
        TabOrder = 0
      end
      object BOk: TBitBtn
        Left = 64
        Top = 196
        Width = 97
        Height = 25
        TabOrder = 1
        OnClick = BOkClick
        Kind = bkOK
      end
      object BitBtn1: TBitBtn
        Left = 240
        Top = 196
        Width = 97
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 2
        OnClick = BitBtn1Click
        Kind = bkCancel
      end
      object CVerificar: TCheckBox
        Left = 8
        Top = 136
        Width = 225
        Height = 17
        Caption = 'Verificar los discos al terminar la copia'
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Restaurar copia'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 83
        Height = 13
        Caption = 'Archivo de origen'
      end
      object Label6: TLabel
        Left = 8
        Top = 88
        Width = 56
        Height = 13
        Caption = 'Descripcion'
      end
      object LFileNameRest: TLabel
        Left = 8
        Top = 32
        Width = 46
        Height = 13
        Caption = '(Ninguno)'
      end
      object SpeedButton2: TSpeedButton
        Left = 104
        Top = 0
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object EDescRest: TEdit
        Left = 8
        Top = 104
        Width = 385
        Height = 21
        AutoSize = False
        ReadOnly = True
        TabOrder = 0
      end
      object BResOK: TBitBtn
        Left = 64
        Top = 196
        Width = 97
        Height = 25
        TabOrder = 1
        OnClick = BResOKClick
        Kind = bkOK
      end
      object BResCerr: TBitBtn
        Left = 240
        Top = 196
        Width = 97
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 2
        Kind = bkCancel
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.zip'
    Filter = 'Copias de seguridad (*.zip)|*.zip'
    Options = [ofPathMustExist]
    Title = 'Archivo de destino para la copia'
    Left = 352
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.zip'
    Filter = 'Copias de seguridad (*.zip)|*.zip'
    Title = 'Archivo de origen para la restauraci'#243'n'
    Left = 320
    Top = 8
  end
  object Zip: TZipMaster
    Verbose = False
    Trace = False
    AddCompLevel = 9
    AddOptions = [AddDiskSpan, AddDiskSpanErase]
    ExtrOptions = []
    Unattended = False
    MinZipDllVers = 172
    MinUnzDllVers = 172
    VersionInfo = '1.72'
    AddStoreSuffixes = [assGIF, assPNG, assZ, assZIP, assZOO, assARC, assLZH, assARJ, assTAZ, assTGZ, assLHA, assRAR, assACE, assCAB, assGZ, assGZIP, assJAR]
    SpanOptions = [spNoVolumeName, spCompatName]
    ConfirmErase = False
    KeepFreeOnDisk1 = 0
    KeepFreeOnAllDisks = 0
    MaxVolumeSize = 1400000
    SFXCaption = 'Self-extracting Archive'
    SFXOverWriteMode = OvrConfirm
    Left = 288
    Top = 8
  end
  object Test: TwwTable
    DatabaseName = 'Jardines'
    TableName = 'general.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 388
    Top = 40
  end
end
