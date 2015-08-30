program SetType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TConnection = (USB, SD, TV, Headphones, DockStation);

var
  connectors: set of TConnection;
  graphics: set of (sprites, scroll, fonts);
  TVoutput: Boolean;

begin

  // Inicializaci�n del conjunto
  connectors := [USB, Headphones];

  // A�adir un nuevo elemento
  connectors := connectors + [TV];

  // Comprobar si un elemento est� contenido
  // en el conjunto
  TVoutput := TV in connectors;

  end.
