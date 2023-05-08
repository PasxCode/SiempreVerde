unit UBusALb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, DB, Wwdatsrc, DBTables, Wwquery, StdCtrls, Buttons,
  Wwkeycb, Grids, Wwdbigrd, Wwdbgrid;

type
  TFBusAlb = class(TForm)
    Label1: TLabel;
    wwDBGrid1: TwwDBGrid;
    EBusqueda: TwwIncrementalSearch;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QBusAlb: TwwQuery;
    DSBusAlb: TwwDataSource;
    ImageList1: TImageList;
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBusAlbBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBusAlb: TFBusAlb;

implementation

uses UAlbaranes;

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


procedure TFBusAlb.wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
begin
 TitleImageAttributes.Alignment:=taLeftJustify;
 If Field.FieldName=EBusqueda.SearchField then
  TitleImageAttributes.ImageIndex:=0
 Else   TitleImageAttributes.ImageIndex:=-1
end;

procedure TFBusAlb.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 QBusAlb.Close;
 OrderBy(QBusAlb, AFieldName);
 EBusqueda.SearchField:=AFieldName;
 QBusAlb.Open;
end;

procedure TFBusAlb.QBusAlbBeforeOpen(DataSet: TDataSet);
begin
  QBusAlb.Filter:=FAlbaranes.TAlbaranes.Filter;
end;

end.
