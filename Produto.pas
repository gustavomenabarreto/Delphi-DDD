unit Produto;

interface

uses
  SysUtils, ProdutoValueObjects;

type
  TProduto = class
  private
    FId: TProdutoId;
    FCodigoProduto: TCodigoProduto;
    FDescricaoProduto: TDescricaoProduto;
  public
    property Id: TProdutoId read FId write FId;
    property CodigoProduto: TCodigoProduto read FCodigoProduto write FCodigoProduto;
    property DescricaoProduto: TDescricaoProduto read FDescricaoProduto write FDescricaoProduto;
  end;

implementation

end.
