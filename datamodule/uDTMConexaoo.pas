unit uDTMConexaoo;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZDataset;

type
  TdtmPrincipal = class(TDataModule)
    ConexaoDB: TZConnection;
    ZReadOnlyQuery1: TZReadOnlyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
