unit ProdutoRepository;

interface

uses SysUtils, DB, ADODB, ConexaoDB, Produto, ProdutoValueObjects;

type
  TProdutoRepository = class
  public
    function Get (Id: TProdutoId): TProduto;
    procedure Add (Produto: TProduto);
    procedure Remove (Produto: TProduto);
    procedure Update (Produto: TProduto);
  end;

implementation

function TProdutoRepository.Get(Id: TProdutoId): TProduto;
begin
  var Query: TADOQuery := TADOQuery.Create (nil);
  Query.Connection := DBConexao.Conexao;
  try
    Query.SQL.Text := 'select id, codigo_produto, descricao_produto from produtos where id=:id';
    Query.Parameters.ParamByName('id').Value := Id;
    try
      Query.Open;
    except
      raise;
    end;
    Result := TProduto.Create;
    Result.Id := Query.FieldByName('id').AsInteger;
    Result.CodigoProduto := Query.FieldByName('codigo_produto').AsString;
    Result.DescricaoProduto := Query.FieldByName('descricao_produto').AsString;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TProdutoRepository.Add(Produto: TProduto);
begin
  //
end;

procedure TProdutoRepository.Remove(Produto: TProduto);
begin
  //
end;

procedure TProdutoRepository.Update(Produto: TProduto);
begin
  //
end;

end.
