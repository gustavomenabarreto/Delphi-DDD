unit ProdutoValueObjects;

interface

type
  TId = integer;

  TProdutoId = TId;

  TCodigoProduto = string;
  TDescricaoProduto = string;

  TProdutoValueObject = class
  private
    FCodigoProduto: TCodigoProduto;
    FDescricaoProduto: TDescricaoProduto;
  public
    constructor Create (const CodigoProduto, DescricaoProduto: string);
    property FirstName: TCodigoProduto read FCodigoProduto;
    property LastName: TDescricaoProduto read FDescricaoProduto;
  end;

implementation

constructor TProdutoValueObject.Create(const CodigoProduto, DescricaoProduto: string);
begin
  FCodigoProduto := CodigoProduto;
  FDescricaoProduto := DescricaoProduto;
end;

end.
