unit Collectible;

interface

uses
  FMX.Graphics; { M�dulo con la definici�n de TBitmap }

type
  TLaunchYear = 1965 .. 1995;
  TConsState = 0 .. 100;

  TCollectible = class abstract
  private
    Fname: String;
    Fyear: TLaunchYear;
    Fstate: TConsState;
    Fdescription: String;
    Fpictures: array of TBitmap;
    nPictures: Integer;
    { M�todos de uso interno }
    procedure setName(name: String);
    function getPicture(Index: Integer): TBitmap;
    procedure extendPictures;
  public
    { S�lo hay un constructor.
      Necesita el nombre del objeto a registrar }
    constructor Create(name: String);
    property Name: String read Fname write setName;
    { Acceso a los dem�s datos contenidos en el objeto }
    property Year: TLaunchYear read Fyear write Fyear;
    property State: TConsState read Fstate write Fstate;
    property Description: String read Fdescription write Fdescription;
    property NumPictures: Integer read nPictures;
    procedure addPicture(picture: TBitmap);
    function hasPictures: Boolean;
property Picture[I: Integer] : TBitmap read getPicture;
  end;

implementation

const INI_NUM_PICTURES = 1;

{ El constructor precisa el nombre del objeto, e
  inicializa los miembros de datos esenciales }
constructor TCollectible.Create(name: String);
begin
  setName(name);
  SetLength(Fpictures, INI_NUM_PICTURES);
  nPictures := 0;
end;

{ M�todo para modificar la propiedad Name }
procedure TCollectible.setName(name: String);
begin
  Fname := name;
end;


{ Facilitar el acceso a las im�genes del objeto }
function TCollectible.getPicture(Index: Integer): TBitmap;
begin
  if Index < nPictures then
    Result := Fpictures[Index]
  else
    Result := nil;
end;

{ A�adir una nueva imagen a la lista de im�genes }
procedure TCollectible.addPicture(picture: TBitmap);
begin
  if nPictures = Length(Fpictures) then
    extendPictures;

  Fpictures[nPictures] := picture;
  inc(nPictures);
end;

{ Extender la matriz duplicando su tama�o }
procedure TCollectible.extendPictures;
begin
  SetLength(Fpictures, Length(Fpictures) * 2);
end;

function TCollectible.hasPictures;
begin
  result := nPictures > 0;
end;

end.
