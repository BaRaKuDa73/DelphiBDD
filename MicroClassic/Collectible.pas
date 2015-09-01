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

end.
