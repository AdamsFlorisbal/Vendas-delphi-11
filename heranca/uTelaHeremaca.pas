unit uTelaHeremaca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, uDTMConexaoo;

type
  TfrmTelaHeranca = class(TForm)
    pgclPrincipal: TPageControl;
    pnlRodaPe: TPanel;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    pnlListagemTopo: TPanel;
    btnPesquisar: TButton;
    grdListagem: TDBGrid;
    btnNovo: TButton;
    btnAlterar: TButton;
    btnCancelar: TButton;
    btnGravar: TButton;
    btnDeletar: TButton;
    btnFechar: TButton;
    DBNavigator1: TDBNavigator;
    mskPesquisar: TMaskEdit;
    qryQuery: TZQuery;
    dtsListagem: TDataSource;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}

procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
close;
end;

end.
