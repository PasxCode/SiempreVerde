object FCopSeg: TFCopSeg
  Left = 284
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Copias de seguridad'
  ClientHeight = 442
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 409
    Height = 426
    ActivePage = TabSheet1
    Align = alCustom
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Realizar copia'
      object Label2: TLabel
        Left = 8
        Top = 0
        Width = 92
        Height = 13
        Caption = 'Carpeta de destino:'
      end
      object Label3: TLabel
        Left = 8
        Top = 296
        Width = 56
        Height = 13
        Caption = 'Descripcion'
      end
      object Label4: TLabel
        Left = 8
        Top = 256
        Width = 30
        Height = 13
        Caption = 'Fecha'
      end
      object Label5: TLabel
        Left = 200
        Top = 0
        Width = 93
        Height = 13
        Caption = 'Nombre de archivo:'
      end
      object Dir: TDirectoryListBox
        Left = 8
        Top = 40
        Width = 185
        Height = 209
        FileList = FileListBox1
        ItemHeight = 16
        TabOrder = 0
      end
      object Drive: TDriveComboBox
        Left = 8
        Top = 16
        Width = 185
        Height = 19
        DirList = Dir
        TabOrder = 1
      end
      object FileListBox1: TFileListBox
        Left = 200
        Top = 40
        Width = 185
        Height = 209
        ExtendedSelect = False
        FileEdit = FileName
        ItemHeight = 16
        Mask = '*.zip'
        TabOrder = 2
      end
      object FileName: TEdit
        Left = 200
        Top = 16
        Width = 185
        Height = 21
        TabOrder = 3
        Text = '*.zip'
      end
      object Edit1: TEdit
        Left = 8
        Top = 312
        Width = 385
        Height = 21
        AutoSize = False
        TabOrder = 4
      end
      object BOk: TBitBtn
        Left = 72
        Top = 348
        Width = 97
        Height = 25
        TabOrder = 5
        OnClick = BOkClick
        Kind = bkOK
      end
      object BitBtn1: TBitBtn
        Left = 248
        Top = 348
        Width = 97
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 6
        Kind = bkCancel
      end
      object CheckBox1: TCheckBox
        Left = 160
        Top = 272
        Width = 225
        Height = 17
        Caption = 'Verificar los discos al terminar la copia'
        TabOrder = 7
      end
      object FecCop: TDateEdit
        Left = 8
        Top = 272
        Width = 121
        Height = 21
        ButtonWidth = 0
        NumGlyphs = 2
        ReadOnly = True
        YearDigits = dyFour
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Restaurar copia'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 0
        Width = 89
        Height = 13
        Caption = 'Carpeta de Origen:'
      end
      object Label6: TLabel
        Left = 8
        Top = 296
        Width = 56
        Height = 13
        Caption = 'Descripcion'
      end
      object Label7: TLabel
        Left = 8
        Top = 256
        Width = 30
        Height = 13
        Caption = 'Fecha'
      end
      object Label8: TLabel
        Left = 200
        Top = 0
        Width = 93
        Height = 13
        Caption = 'Nombre de archivo:'
      end
      object DirRest: TDirectoryListBox
        Left = 8
        Top = 40
        Width = 185
        Height = 209
        FileList = fllstbx
        ItemHeight = 16
        TabOrder = 0
      end
      object DriveComboBox1: TDriveComboBox
        Left = 8
        Top = 16
        Width = 185
        Height = 19
        DirList = DirRest
        TabOrder = 1
      end
      object fllstbx: TFileListBox
        Left = 200
        Top = 40
        Width = 185
        Height = 209
        ExtendedSelect = False
        FileEdit = FileNameRest
        ItemHeight = 16
        Mask = '*.zip'
        TabOrder = 2
      end
      object FileNameRest: TEdit
        Left = 200
        Top = 16
        Width = 185
        Height = 21
        TabOrder = 3
        Text = '*.zip'
      end
      object Edit4: TEdit
        Left = 8
        Top = 312
        Width = 385
        Height = 21
        AutoSize = False
        ReadOnly = True
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 8
        Top = 272
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 5
      end
      object BResOK: TBitBtn
        Left = 72
        Top = 348
        Width = 97
        Height = 25
        TabOrder = 6
        OnClick = BResOKClick
        Kind = bkOK
      end
      object BResCerr: TBitBtn
        Left = 248
        Top = 348
        Width = 97
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 7
        Kind = bkCancel
      end
    end
  end
  object Backup: TBackupFile
    Version = '5.10'
    BackupMode = bmAll
    CompressionLevel = clFastest
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    OnProgress = BackupProgress
    OnError = BackupError
    RestoreFullPath = False
    SaveFileID = True
    Left = 384
    Top = 8
  end
end
