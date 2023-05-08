unit UBusCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Wwquery, WwTable, StdCtrls, Wwkeycb, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, Wwdatsrc, ImgList;

type
  TFBusCli = class(TForm)
    QBusCli: TwwQuery;
    DSQClientes: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EBusqueda: TwwIncrementalSearch;
    ImageList1: TImageList;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBusCli: TFBusCli;

implementation

{$R *.dfm}

Procedure OrderBy(Tabla: TwwQuery; Orden: String);
Var i: Integer;
    OBEncontrado: Boolean;
Begin
 OBEncontrado:=False;
 For i:=0 to Tabla.Sql.Count-1 Do //Primero buscamos la clausula ORDER BY.
  Begin
   If (Pos('ORDER BY', UpperCase(Tabla.SQL[i]))=1) then
    Begin
     Tabla.SQL[i]:='ORDER BY '+Orden;
     OBEncontrado:=True;
    End
   Else if (Pos('ORDER BY', UpperCase(Tabla.SQL[i]))>1) then
    Raise Exception.Create('La clausula Order By debe estar en una sola linea y sin espacios delante. Tabla '+ Tabla.Name);
  End;
 If Not OBEncontrado then
   Tabla.SQL.Add('ORDER BY '+Orden);
End;


procedure TFBusCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= CAHide
end;

procedure TFBusCli.wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
begin
 TitleImageAttributes.Alignment:=taLeftJustify;
 If Field.FieldName=EBusqueda.SearchField then
  TitleImageAttributes.ImageIndex:=0
 Else   TitleImageAttributes.ImageIndex:=-1
end;

procedure TFBusCli.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 QBusCli.Close;
 OrderBy(QBusCli, AFieldName);
 EBusqueda.SearchField:=AFieldName;
 QBusCli.Open;
end;

end.
