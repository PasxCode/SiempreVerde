unit UCopSeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, Usqx_ctrl, Usqx_errors, ComCtrls, backup,
  Tabs, ShellApi, Buttons, Mask, ToolEdit, DBTables;

type
  TFCopSeg = class(TForm)
    Backup: TBackupFile;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Dir: TDirectoryListBox;
    Drive: TDriveComboBox;
    FileListBox1: TFileListBox;
    FileName: TEdit;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    BOk: TBitBtn;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label6: TLabel;
    DirRest: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    fllstbx: TFileListBox;
    FileNameRest: TEdit;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    BResOK: TBitBtn;
    BResCerr: TBitBtn;
    FecCop: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BOkClick(Sender: TObject);
    procedure BackupProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure BackupError(Sender: TObject; const Error: Integer;
      ErrString: String);
    procedure FormCreate(Sender: TObject);
    procedure BResOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCopSeg: TFCopSeg;
  Parar: Boolean;
  Formatear: Boolean;
  ErrorMode: Word;


implementation

uses UProgreso, UPrincipal;

Var Progreso: TFProgreso;

{$R *.dfm}

Function Formatea: Integer;
Var Op: SHFILEOPSTRUCT;
Begin
   Op.Wnd:=0;
   Op.pFrom:='A:\*.*'+#0;
   op.pTo:=#0;
   Op.wFunc:=FO_DELETE ;
   op.fFlags:=0;
   Op.fFlags:=OP.fFlags OR FOF_NOCONFIRMATION OR FOF_SILENT ;
   Result:=SHFileOperation(Op);
End;

Function DiscoInsertado: Boolean;
var EMode: Word;
begin
 EMode := SetErrorMode(SEM_FAILCRITICALERRORS);
 try
   if DiskSize(Ord('A')-$40) <> -1 then
    Result:=True
   else
     Result:=False;
 finally
   SetErrorMode(EMode);
 end;
end;



procedure TFCopSeg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=CAFree;
 FCopSeg:=Nil;
 SetCurrentDirectory(PAnsiChar(ExtractFileDir(Application.ExeName)));
end;

procedure TFCopSeg.BOkClick(Sender: TObject);
Var Archivos: TStringList;
    Resultado: Integer;
    EMode: Word;
begin
 Try
  Archivos:=TStringList.Create;
  Archivos.Clear;
  Archivos.Add(ExtractFileDir(Application.ExeName)+'\Data\*.* /s');
  Backup.BackupTitle:='Copia '+DateToStr(Date);
  If (Pos('A:', Dir.Directory)<>0) OR (Pos('B:',Dir.Directory)<>0) then
   Begin
    Formatear:=True;
    ShowMessage('Atencion, se eliminarán todos los datos del disco');
    If Formatea<>0 then Raise Exception.Create('No se pueden eliminar los datos del disco');
   End
  Else Formatear:=False;
  FileName.Text:=ChangeFileExt(FileName.Text, '.zip');
  Progreso:=TFProgreso.Create(Self);
  Progreso.Parent:=FPrincipal;
  FPrincipal.Enabled:=False;
  If Not Backup.Backup(TStrings(Archivos), Dir.Directory+'\'+FileName.Text) then
   Begin
    Raise Exception.Create('No se ha podido realizar la copia de seguridad');
   End;
  While DiscoInsertado do
   ShowMessage('Retire el disco de la unidad y pulse Aceptar para continuar.');
  MessageDlg('Copia realizada con éxito.', MtInformation,[mbok],0);
 Finally
  FPrincipal.Enabled:=True;
  Progreso.Free;
  Archivos.Free;
 End;
end;

procedure TFCopSeg.BackupProgress(Sender: TObject; Filename: String;
  Percent: TPercentage; var Continue: Boolean);
begin
 Application.ProcessMessages;
 Progreso.LActual.Caption:='Archivo Actual: '+ExtractFileName(FileName);
 Progreso.PActual.Position:=Percent;
 Progreso.PTotal.Max:=Backup.FilesTotal;
 Progreso.PTotal.Position:=Backup.FilesProcessed;
end;

procedure TFCopSeg.BackupError(Sender: TObject; const Error: Integer;
  ErrString: String);
begin
 Case Error of
   IDCantreadFile:    ErrString :='Imposible leer del dispositivo.';
   IDCantwriteFile:   ErrString :='Imposible escribir en el dispositivo.';
   IDCantreadArchive: ErrString :='Imposible leer el archivo.';
   IDCantwriteArchive:ErrString :='Imposible escribir en el archivo.'+#13+
                                  'Asegurese de que hay disco en la unidad y'+#13+
                                  'que no esté protegido contra escritura.';
   IDInvalidfiletype: ErrString :='No es un archivo de copia de seguridad valido.';
   IDCompression:     ErrString :='No se puede comprimir.';
   IDCantCreateFileID:ErrString :='No hay espacio para crear la lista de archivos.';
 End;
 MessageDlg('Error: '+ErrString+#13+'Codigo de error: '+IntToStr(Error),mtError,[mbOk],0);
end;

procedure TFCopSeg.FormCreate(Sender: TObject);
begin
 FecCop.Date:=Date;
end;

procedure TFCopSeg.BResOKClick(Sender: TObject);
Var TMPPath, TmpDir: Array[0..255] of char;
    Op: SHFILEOPSTRUCT;
    TmpStr: String;
begin
{ GetTempPath(255, TMPPath);
 If (GetTempFileName(TMPPath, 'SV', 0,TmpDir)<>0) then
  Begin
   DeleteFile(TmpDir);
   CreateDir(TmpDir);
  End;}
 Try
   Progreso:=TFProgreso.Create(Self);
   Progreso.Parent:=FPrincipal;
   FPrincipal.Enabled:=False;
   RenameFile(ExtractFileDir(Application.Exename)+'\Data', ExtractFileDir(Application.Exename)+'\Data.Bak');
   CreateDir(ExtractFileDir(Application.Exename)+'\Data');
   If Not Backup.Restore(DirRest.Directory+'\'+FileNameRest.Text, ExtractFileDir(Application.Exename)+'\Data') Then
    Begin
     Backup.Stop;
     Op.Wnd:=0;
     TmpStr:=ExtractFileDir(Application.Exename)+'\Data\*.*'+#0+#0;
     Op.pFrom:=PAnsiChar(TmpStr);
     op.pTo:=#0;
     Op.wFunc:=FO_DELETE;
     op.fFlags:=0;
     Op.fFlags:=OP.fFlags OR FOF_NOCONFIRMATION OR FOF_SILENT;
     SHFileOperation(Op);
     RemoveDir(ExtractFileDir(Application.Exename)+'\Data');
     If Not RenameFile(ExtractFileDir(Application.Exename)+'\Data.bak', ExtractFileDir(Application.Exename)+'\Data')
      Then Raise Exception.Create('No se pudo renombrar el directorio');
     Raise Exception.Create('No se ha podido restaurar la copia de seguridad.');
    End;
    Op.Wnd:=0;
    TmpStr:=ExtractFileDir(Application.Exename)+'\Data.bak\*.*'+#0+#0;
    Op.pFrom:=PAnsiChar(TmpStr);
    op.pTo:=#0;
    Op.wFunc:=FO_DELETE;
    op.fFlags:=0;
    Op.fFlags:=OP.fFlags OR FOF_NOCONFIRMATION OR FOF_SILENT;
    SHFileOperation(Op);
    RemoveDir(ExtractFileDir(Application.Exename)+'\Data.bak');
    MessageDlg('Restauración realizada con éxito.', MtInformation,[mbok],0);
 Finally
   FPrincipal.Enabled:=True;
   Progreso.Free;
 End;
end;

end.
