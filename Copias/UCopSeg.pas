unit UCopSeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ComCtrls,
  Tabs, ShellApi, Buttons, Mask, ToolEdit, DBTables, backup, ZipMstr, ZipMsg,
  DB, Wwtable, RxMemDS;

Const Empresa = 'SiempreVerde'; //Constante para identificar los archivos de copia.
                                //Podriamos haberlo hecho con el nombre de la
                                //empresa en la tabla generales, pero en el caso
                                //de que no se pudiese abrir la tabla porque
                                //estuviera corrupta no podríamos averiguar este
                                //valor.

type
  TFCopSeg = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    EDesc: TEdit;
    BOk: TBitBtn;
    BitBtn1: TBitBtn;
    CVerificar: TCheckBox;
    SpeedButton1: TSpeedButton;
    SaveDialog1: TSaveDialog;
    LFileName: TLabel;
    OpenDialog1: TOpenDialog;
    Zip: TZipMaster;
    Test: TwwTable;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label6: TLabel;
    LFileNameRest: TLabel;
    SpeedButton2: TSpeedButton;
    EDescRest: TEdit;
    BResOK: TBitBtn;
    BResCerr: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BOkClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BResOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZipProgress(Sender: TObject; ProgrType: ProgressType;
      Filename: String; FileSize: Cardinal);
    procedure BitBtn1Click(Sender: TObject);
    procedure ZipMessage(Sender: TObject; ErrCode: Integer;
      Message: String);
  private
    { Private declarations }
  public
    Function Verificar: Boolean;
    { Public declarations }
  end;

var
  FCopSeg: TFCopSeg;
  Parar: Boolean;
  Formatear: Boolean;
  ErrorMode: Word;
  RutaDatos: String;
  TotalSize1, TotalSize2, TotalProgress1, TotalProgress2: Longint;


implementation

uses UProgreso, BDEUtils;

Var Progreso: TFProgreso;

{$R *.dfm}
{$R ZipMsgES.res}

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

Function FileOp(Comando: Longint; Ffrom, Fto: String):Integer;
Var OP: SHFILEOPSTRUCT;
    EMode: Word;
Begin
 EMode:=SetErrorMode(SEM_FAILCRITICALERRORS);
 Fillchar(Op, Sizeof(Op),0);
 op.wFunc:=Comando;
 op.pFrom:=PAnsiChar(FFrom+#0+#0);
 op.pTo:=PAnsiChar(fto+#0+#0);
 op.fFlags:= FOF_SIMPLEPROGRESS OR FOF_NOCONFIRMATION;
 Result:=SHFileOperation(Op);
 SetErrorMode(Emode);
End;


Function Directorio_Temporal: String;
Var TmpDir, TmpFileName: Array[0..255] of char;
    Longitud: LongInt;
Begin
 Result:='';
 If (GetTempPath(255, TmpDir)=0) then Exit;
 If (GetTempFileName(TmpDir, 'Tmp', 0, TmpFIleName)=0) then Exit;
 If Not DeleteFile(TmpFileName) then Exit;
 If Not CreateDir(TmpFileName) then Exit;
 Result:=TmpFileName;
End;

Function TFCopSeg.Verificar: Boolean;
Begin
 Try
  FProgreso:=TFProgreso.Create(Self);
  Fprogreso.Parent:=Self;
  FCopSeg.Enabled:=False;
 If (Pos('A:',LFileName.Caption)<>0) OR (Pos('B:',LFileName.Caption)<>0) then
  Begin
   If Zip.TotalDisks=0 then
     While DiscoInsertado do ShowMessage('Es necesario retirar el disco de la unidad para que Windows detecte un cambio de disco'+#13+
                                         'y lea los datos desde la superficie del disco. De lo contrario Windows leerá los datos del'+#13+
                                         'cache y no será posible verificar los datos escritos en el disco.'+#13+
                                         'Retire el disco y pulse Aceptar para continuar.');
     While not DiscoInsertado do ShowMessage('Vuelva a insertar el disco en la unidad y pulse Aceptar');
  End;
 Zip.ZipFileName:=LFileName.Caption;
 Zip.ExtrOptions:=[ExtrTest];
 Zip.OnProgress:=ZipProgress;
 If Zip.Extract<>0 then Result:=False Else Result:=True;
 Finally
  FProgreso.Free;
  FCopSeg.Enabled:=True;
 End;
End;


Function Compactar_Tablas: Integer;
Var Op: SHFILEOPSTRUCT;
    Resultado: Integer;
    Archivo: TSearchRec;
    CurrentDir: String;
Begin
 Result:=0;
 SetCurrentDir(RutaDatos+'\..');
 If Not CreateDir(RutaDatos+'\..\BAK') then
  Begin
     MessageDlg('No se puede crear el espacio temporal necesario para realizar la operacion.'+#13+
                'Consulte con el servicio técnico. La aplicación se detendrá ahora para minimizar daños.'+#13+#13+
                'Contexto CreateDir(BAK)', mtError, [mbOK],0);
     Result:=1;
     Application.Terminate;
     Exit;
  End;
 FillChar(Op, Sizeof(Op), 0);
 OP.Wnd:=0;
 OP.pFrom:=PANsiChar(RutaDatos+'\*.*'+#0+#0);
 OP.pTo:=PAnsiChar(RutaDatos+'\..\BAK'+#0+#0);
 OP.fFlags:= FOF_SILENT OR FOF_NOCONFIRMATION;
 OP.wFunc:=FO_COPY;
 Resultado:=SHFileOperation(OP);
 If Resultado<>0 then
  Begin
     MessageDlg('No se puede crear el espacio temporal necesario para realizar la operacion.'+#13+
                'Consulte con el servicio técnico. La aplicación se detendrá ahora para minimizar daños.'+#13+#13+
                'Contexto SHFileOperation.FO_COPY'+#13+
                'Codigo de error: '+IntToStr(Resultado),
                mtError, [mbOK],0);
     Result:=1;
     Application.Terminate;
     Exit;
  End;
 Try
  Resultado:=FindFirst(RutaDatos+'\*.db', faArchive, Archivo);
  While Resultado=0 do
   Begin
    FCopSeg.Test.Active:=False;
    FCopSeg.Test.TableName:=Archivo.Name;
    FCopSeg.Test.Open;
    PackTable(FCopSeg.Test);
    Resultado:=FindNext(Archivo)
   End;
  FindClose(Archivo);
  FCopSeg.Test.Active:=False;
  FillChar(OP, Sizeof(op),0);
  Op.pFrom:=PAnsiChar(RutaDatos+'\..\BAK\*.*'+#0+#0);
  op.wFunc:= FO_DELETE;
  op.fFlags:= FOF_NOCONFIRMATION OR FOF_SILENT;
  Resultado:=SHFileOperation(OP);
  If Resultado<>0 then
   Begin
      MessageDlg('No se puede eliminar el espacio temporal adquirido para realizar la operacion.'+#13+
                 'Consulte con el servicio técnico. La aplicación se detendrá ahora para minimizar daños.'+#13+#13+
                 'Contexto SHFileOperation.FO_DELETE'+#13+
                 'Codigo de error: '+IntToStr(Resultado),
                 mtError, [mbOK],0);
      Result:=1;
      Application.Terminate;
      Exit;
   End;
  If not RemoveDir(RutaDatos+'\..\BAK') then
   Begin
      MessageDlg('No se puede eliminar el espacio temporal adquirido para realizar la operacion.'+#13+
                 'Consulte con el servicio técnico. La aplicación se detendrá ahora para minimizar daños.'+#13+#13+
                 'Contexto RemoveDir(BAK)', mtError, [mbOK],0);
      Result:=1;
      Application.Terminate;
      Exit;
   End;
 Except
  On E:EDataBaseError do
   Begin
    MessageDlg('El motor de la base de datos ha informado del siguiente error al compactar la tabla '+ Archivo.Name+':'#13+#13+
               '"'+e.Message+'"' +#13+#13+
               'Contacte con el servicio técnico. La aplicación se detendrá ahora para minimizar daños.',mtError,[mbOK],0);
    Result:=1;
    Application.Terminate;
    Exit;
   End;
  Else
   Begin
    MessageDlg('Se ha producido un error no determinado'+#13+#13+
               'Contacte con el servicio técnico. La aplicación se detendrá ahora para minimizar daños.',mtError,[mbOK],0);
    Result:=1;
    Application.Terminate;
    Exit;
   End;
 End;
End;

procedure TFCopSeg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=CAFree;
 FCopSeg:=Nil;
end;

procedure TFCopSeg.SpeedButton1Click(Sender: TObject);
begin
 If SaveDialog1.Execute then
  LFileName.Caption:=SaveDialog1.FileName;
end;

procedure TFCopSeg.SpeedButton2Click(Sender: TObject);
Var VarTmp: String;
begin
 If OpenDialog1.Execute then
  Begin
   Zip.FSpecArgs.Clear;
   Zip.ZipFileName:=OpenDialog1.FileName;
   VarTmp:=Zip.ZipComment;
   If (VarTmp='') or (Copy(VarTmp, 1, Length(Empresa))<>Empresa) then
    Begin
     LFileNameRest.Caption:='(Ninguno)';
     EDescRest.Text:='';
     Raise Exception.Create('No es un archivo de copia de seguridad válido.');
    End;
   EDescRest.Text:= Copy(VarTmp, Length(Empresa)+2,Length(VarTmp));
   If Zip.ErrCode=0 then LFileNameRest.Caption:=OpenDialog1.FileName;
  End;
end;

procedure TFCopSeg.BResOKClick(Sender: TObject);
Var TmpStr: String;
    Resultado: Integer;
begin
Try
  FProgreso:=TFProgreso.Create(Self);
  FProgreso.Parent:=Self;
  FCopSeg.Enabled:=False;
  Zip.OnProgress:=ZipProgress;
 If LFileNameRest.Caption='(Ninguno)' then
  Raise Exception.Create('Seleccione el archivo de origen');
 If Not CreateDir(RutaDatos+'\..\New') then
    Begin
      Resultado:=FileOp(FO_Delete, RutaDatos+'\..\New\*.*','');
      If Resultado<>0 then
       Begin
        Raise Exception.Create('Ha ocurrido un error grave en la aplicacion y no es posible restaurar la copia.'+#13+
                               'Anote lo que aparece en este cuadro de texto y contacte con el servicio técnico.'+#13+#13+
                               'Contexto: CreateDir(New)');
       End;
    End;
 Zip.ExtrBaseDir:=RutaDatos+'\..\New';
 Try
  Resultado:=Zip.Extract;
 Except
   If Zip.ErrCode=11007 then
    MessageDlg('Operacion cancelada por el usuario',mtError, [mbOK],0)
   Else MessageDlg('Error al leer el archivo de restauracion.'+#13+#13+
              'Codigo de error: '+IntToStr(Zip.ErrCode),mtError, [mbOK],0);
   Screen.Cursor:=crDefault;
   Exit;
  End;
  Session.DropConnections;
  SetCurrentDir(RutaDatos+'\..');
  If Resultado<>0 then Exit;
  While Zip.UnzBusy do;
   If Not RenameFile(RutaDatos,RutaDatos+'\..\Old') Then
    Begin
     Raise Exception.Create('Ha ocurrido un error grave en la aplicacion y no es posible restaurar la copia.'+#13+
                            'Anote lo que aparece en este cuadro de texto y contacte con el servicio técnico.'+#13+#13+
                            'Contexto: RenameDir(Data, Old)');
    End;
   If Not RenameFile(RutaDatos+'\..\New',RutaDatos) Then
    Begin
     Raise Exception.Create('Ha ocurrido un error grave en la aplicacion y no es posible restaurar la copia.'+#13+
                'Anote lo que aparece en este cuadro de texto y contacte con el servicio técnico.'+#13+#13+
                'Contexto: RenameDir(New, Data)');
    End;
   Try
    SetCurrentDir(RutaDatos+'\..');
    Test.Close;
    Test.TableName:='General.db';
    Test.Open;
    Test.Close;
   Except
     Raise Exception.Create('Ha ocurrido un error grave en la aplicacion y no es posible restaurar la copia.'+#13+
                'Anote lo que aparece en este cuadro de texto y contacte con el servicio técnico.'+#13+#13+
                'Contexto: OpenDataBase');
   End;
   // Aqui ya estamos seguros de que se puede abrir la base de datos.
   // Los errores que ocurran en adelante son raros de cojones.
   Resultado:=FileOp(FO_DELETE, RutaDatos+'\..\Old\*.*','');
   If Resultado<>0 then
    Begin
     Raise Exception.Create('Ha ocurrido un error grave en la aplicacion y no es posible restaurar la copia.'+#13+
                'Anote lo que aparece en este cuadro de texto y contacte con el servicio técnico.'+#13+#13+
                'Codigo de error: '+IntToStr(Resultado)+#13+
                'Contexto: SHFileOperation.FO_DELETE');
    End;
   If not RemoveDir(RutaDatos+'\..\Old') Then
    Begin
     Raise Exception.Create('Ha ocurrido un error grave en la aplicacion y no es posible restaurar la copia.'+#13+
                'Anote lo que aparece en este cuadro de texto y contacte con el servicio técnico.'+#13+#13+
                'Contexto: RemoveDir(Old)');
    End;
   MessageDlg('Copia restaurada con éxito.',mtInformation, [mbOK],0);
   Application.Terminate;
Finally
  Zip.ZipFileName:='';
  Zip.OnProgress:=Nil;
  FProgreso.Free;
  FCopSeg.Enabled:=True;
End;
end;

procedure TFCopSeg.FormCreate(Sender: TObject);
Var Lista: TStringList;
    i: Integer;
    Win: HWND;
begin
 Try
  Win:=FindWindow('TFPrincipal',0);
  If Win<>0 then
   Begin
    MessageDlg('No se pueden realizar operaciones de copia ni restauración mientras la aplicacion se esta ejecutando'
               , mtError, [mbok],0);
    Application.Terminate;
   End;
  Lista:=TStringList.Create;
  Session.GetAliasParams('Jardines',TStrings(Lista));
  For i:=0 to Lista.Count-1 do
   If Pos('PATH=', Lista.Strings[i])<>0 then
    RutaDatos:=Copy(Lista.Strings[i], Pos('PATH=', Lista.Strings[i])+5,Length(Lista.Strings[i]));
 Except
  MessageDlg('No se puede encontrar la ruta de acceso a la base de datos.'+#13+
             'Contacte con el servicio técnico.',mtError,[mbOK],0 );
  Application.Terminate;
 End;

end;

procedure TFCopSeg.ZipProgress(Sender: TObject; ProgrType: ProgressType;
  Filename: String; FileSize: Cardinal);
Var Step: Longint;
begin
    Case ProgrType Of
        TotalSize2Process:
            Begin
             FProgreso.PTotal.Max:=FileSize;
            End;
        ProgressUpdate:
            Begin
             FProgreso.PTotal.StepBy(FileSize Div 2);
            End;
    End;

 Application.ProcessMessages;
end;

procedure TFCopSeg.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

procedure TFCopSeg.ZipMessage(Sender: TObject; ErrCode: Integer;
  Message: String);
begin
 ShowMessage(Message);
end;

procedure TFCopSeg.BOKClick(Sender: TObject);
Var DirTmp: String;
    FileName, SinExt: String;
    Archivos: TSearchRec;
    HayMas: Integer;
    Unidad: String;
    Mensaje: String;
    FileList: TStringList;
    Continuar: Boolean;
    Resultado: Integer;
    TotalDiscos, DiscoActual: Integer;
    ErrorMode: Word;
begin
 Try
 If LFileName.Caption='(Ninguno)' then
  Raise Exception.Create('Seleccione el archivo de destino');
 FCopSeg.Enabled:=False;
 If (pos('A:', LFileName.Caption)<>0) or (pos('B:', LFileName.Caption)<>0) then
  Begin
   DirTmp:=Directorio_Temporal;
   If DirTmp='' then Raise Exception.Create('No se puede crear espacio temporal para completar la operación');
  End
 Else
  Begin
   DirTmp:=ExtractFileDir(LFileName.Caption);
  End;
 FileName:=ExtractFileName(LFileName.Caption);
 Zip.ZipFileName:='';
 Zip.FSpecArgs.Clear;
 Zip.FSpecArgs.Add(RutaDatos+'\*.*');
 Zip.ZipFileName:=DirTmp+'\'+FileName;
 Resultado:=Zip.Add;
  If (Resultado<>0) And (Resultado<>11007) then Raise Exception.Create(IntToStr(Zip.ErrCode)+': Fallo al comprimir ficheros.');
 Zip.ZipComment:=Empresa+#9+DateToStr(Date)+' - '+EDesc.Text;
 If (pos('A:', LFileName.Caption)<>0) or (pos('B:', LFileName.Caption)<>0) then
  Begin
   SinExt:=ChangeFileExt(FileName, '.z*');
   FileList:=TStringList.Create;
   FileList.Clear;
   FileList.Sorted:=True;
   HayMas:=FindFirst(DirTmp+'\'+SinExt, FAArchive, Archivos);
   While HayMas=0 do
    Begin
     FileList.Add(DirTmp+'\'+Archivos.Name);
     HayMas:=FindNext(Archivos);
    End;
   FindClose(Archivos);
   Continuar:=True; Resultado:=0;
   TotalDiscos:=FileList.Count;
   DiscoActual:=1;
   While Continuar AND (DiscoActual<=FileList.Count) do
    Begin
     Resultado:=MessageDlg('Inserte el disco '+IntToStr(DiscoActual)+' de '+IntToStr(FileList.Count)+'. Se eliminarán todos los datos del disco.',
                 mtInformation, [mbOK, mbCancel], 0);
     If Resultado=mrCancel then Continuar:=False;
     If Resultado=mrOK then
      Begin
        Resultado:=FileOp(FO_DELETE, 'A:\*.*','');
        If Resultado=0 then
         Resultado:=FileOp(FO_COPY, FileList.Strings[DiscoActual-1], 'A:\');
        If Resultado=0 then Inc(DiscoActual);
      End;
     If Resultado<>0 then
      Begin
       Case Resultado of
       19: Mensaje:='El disco esta protegido contra escritura. ¿Quiere reintentar la operación?';
       1223: Mensaje:='El disco no esta insertado o es defectuoso. ¿Quiere reintentar la operación';
       Else Mensaje:='Ha ocurrido un error no esperado y no es posible escribir en este disco.'+#13+
                     'Es posible que el disco esté defectuoso. ¿Quiere reintentar la operación?';
       End;
       If MessageDlg(Mensaje, mtConfirmation, [mbYes, mbNo], 0)=mrNo then Continuar:=False;
      End;
    End;
  End;
  If Resultado=0 then
   Begin
    If Verificar then
     Begin
      MessageDlg('Copia realizada con éxito.', mtInformation, [mbOK],0);
      Application.Terminate;
     End
    Else
     MessageDlg('La verificación ha fallado. La copia no es segura.',mtError, [mbOK],0);
   End;
 Finally
  FCopSeg.Enabled:=True;
 End;

end;

end.
