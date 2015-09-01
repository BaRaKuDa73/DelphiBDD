unit Collectible;

interface

uses
  FMX.Graphics; { M�dulo con la definici�n de TBitmap }

type
  TLaunchYear    = 1965 .. 1995;
  TConsState     =    0 .. 100;

TCollectible = class abstract
  private
    Fname        : String;
    Fyear        : TLaunchYear;
    Fstate       : TConsState;
    Fdescription : String;
    Fpictures    : array of TBitmap;
    nPictures    : Integer;
end;

implementation

end.
