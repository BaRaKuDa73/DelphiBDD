unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmPoblacion = class(TDataModule)
    PoblacionConnection: TFDConnection;
    PoblacionPaisTable: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPoblacion: TdmPoblacion;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.