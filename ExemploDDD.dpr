program ExemploDDD;

uses
  Vcl.Forms,
  Produto in 'Fontes\CadastroProdutos\entities\Produto.pas',
  ProdutoRepository in 'Fontes\CadastroProdutos\repositories\ProdutoRepository.pas',
  ProdutoValueObjects in 'Fontes\CadastroProdutos\ValueObjects\ProdutoValueObjects.pas',
  CadastrosProdutosForm in 'Fontes\CadastroProdutos\forms\CadastrosProdutosForm.pas' {frmCadastroProdutos},
  ProdutoServices in 'Fontes\CadastroProdutos\services\ProdutoServices.pas',
  ConexaoDB in 'Fontes\CadastroProdutos\repositories\ConexaoDB.pas';

{$R *.res}

const
  CONNECTION_STRING = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Gustavo Mena Barreto\OneDrive\Área de Trabalho\Embarcadero Conference\2022\DDD\ExemploDDD\db\base.mdb;User Id=admin;Password=;';

begin
  Application.Initialize;

  DBConexao := TConexaoDB.Create(CONNECTION_STRING);

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastroProdutos, frmCadastroProdutos);
  Application.Run;
end.
