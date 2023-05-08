unit UBusFac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Wwdatsrc, DBTables, Wwtable,
  StdCtrls, Wwkeycb, Wwquery, Buttons, ImgList;

type
  TFBusFac = class(TForm)
    wwDBGrid1: TwwDBGrid;
    EBusqueda: TwwIncrementalSearch;
    Label1: TLabel;
    QBusFac: TwwQuery;
    DSBusFac: TwwDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ImageList1: TImageList;
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure QBusFacBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
   SyncSource: TwwTable;
    { Public declarations }
  end;

var
  FBusFac: TFBusFac;

implementation

uses UFacturas;

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

procedure TFBusFac.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 QBusFac.Close;
 OrderBy(QBusFac, AFieldName);
 EBusqueda.SearchField:=AFieldName;
 QBusFac.Open;
end;

procedure TFBusFac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CAHide;
end;

procedure TFBusFac.wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
begin
 TitleImageAttributes.Alignment:=taLeftJustify;
 If Field.FieldName=EBusqueda.SearchField then
  TitleImageAttributes.ImageIndex:=0
 Else   TitleImageAttributes.ImageIndex:=-1
end;

procedure TFBusFac.QBusFacBeforeOpen(DataSet: TDataSet);
begin
  QBusFac.Filter:=FFacturas.TFacturas.Filter;
end;

end.
