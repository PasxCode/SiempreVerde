unit UBusPres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, DBTables, Wwquery, StdCtrls, Wwkeycb, Grids,
  Wwdbigrd, Wwdbgrid, ImgList, Buttons;

type
  TFBusPres = class(TForm)
    wwDBGrid1: TwwDBGrid;
    EBusqueda: TwwIncrementalSearch;
    QBusPres: TwwQuery;
    DSQBusPres: TwwDataSource;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
  FBusPres: TFBusPres;

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


procedure TFBusPres.wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
begin
 TitleImageAttributes.Alignment:=taLeftJustify;
 If Field.FieldName=EBusqueda.SearchField then
  TitleImageAttributes.ImageIndex:=0
 Else TitleImageAttributes.ImageIndex:=-1;

end;

procedure TFBusPres.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 QBusPres.Close;
 OrderBy(QBusPres, AFieldName);
 EBusqueda.SearchField:=AFieldName;
 QBusPres.Open;
end;

end.
