unit ProdutoServices;

interface

uses SysUtils, Produto, ProdutoValueObjects, ProdutoRepository;

type
  TProdutoServices = class
  public
    class function CarregarProduto(const ProdutoId: TProdutoId): TProduto;
  end;

implementation


class function TProdutoServices.CarregarProduto(
  const ProdutoId: TProdutoId): TProduto;
begin
  var Repository: TProdutoRepository := TProdutoRepository.Create;

  Result := Repository.Get(ProdutoId);
  FreeAndNil(Repository);
end;

end.
