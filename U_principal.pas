unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexaoo;

type
  TfrmPrincipal = class(TForm)
    MainPrincpal: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIO1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    CATEGORIA1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    menuFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTE1: TMenuItem;
    CLIENTE2: TMenuItem;
    PRODUTO1: TMenuItem;
    PRODUTO2: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    procedure menuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CATEGORIA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

procedure TfrmPrincipal.CATEGORIA1Click(Sender: TObject);
begin
  frmCadCategoria:=TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
          dtmPrincipal  := TdtmPrincipal.Create(Self);
          dtmPrincipal.ConexaoDB.SQLHourGlass:=True;
          dtmPrincipal.ConexaoDB.Protocol := 'sqlite-3';
          dtmPrincipal.ConexaoDB.Database := 'D:\projeto_delphi\datamodule\vendas.db';
          dtmPrincipal.ConexaoDB.Connected:=True;
end;

procedure TfrmPrincipal.menuFecharClick(Sender: TObject);
begin
Close;
end;

end.
