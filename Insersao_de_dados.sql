use e_commerce;

INSERT INTO Cliente (Fname, Mname, Lname, Documento, TipoPessoa) VALUES ('Joao', 'Carlos', 'Vasco', '538.794.981-76', 'PF');
INSERT INTO Cliente (Fname, Mname, Lname, Documento, TipoPessoa) VALUES ('Luiz', 'Thiago', 'da Silva', '007.725.438-16', 'PF');
INSERT INTO Cliente (Fname, Mname, Lname, Documento, TipoPessoa) VALUES ('Joana', 'Dias', 'Santos', '100.357.412-63', 'PF');
INSERT INTO Cliente (Fname, Mname, Lname, Documento, TipoPessoa) VALUES ('Silvanei', 'Basto', 'Cordeiro Ltda.', '38.694.566/0001-24', 'PJ');
INSERT INTO Cliente (Fname, Mname, Lname, Documento, TipoPessoa) VALUES ('Eduardo', 'Esteven', 'Val Ltda.', '18.125.467/0001-10', 'PJ');

INSERT INTO StatusPedido (Identificacao) VALUES ('ABERTO');
INSERT INTO StatusPedido (Identificacao) VALUES ('EM ANDAMENTO');
INSERT INTO StatusPedido (Identificacao) VALUES ('EM PAUSA');
INSERT INTO StatusPedido (Identificacao) VALUES ('CANCELADO');
INSERT INTO StatusPedido (Identificacao) VALUES ('CONCLUÍDO');

INSERT INTO TipoPagamento (Identificacao) VALUES ('Dinheiro');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Debito');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Credito');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Boleto');

INSERT INTO StatusEntrega (Identificacao) VALUES ('Aguardando separação');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Retirado pela transportadora');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Em transito para entrega');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Entregue');

INSERT INTO EnderecoEntrega (CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES ('NC13458561276', '50098340', 'Rua Joaquim Nabuco', '700', NULL);

INSERT INTO Estoque (Identificacao) VALUES ('Setor A');
INSERT INTO Estoque (Identificacao) VALUES ('Setor B');
INSERT INTO Estoque (Identificacao) VALUES ('Setor C');
INSERT INTO Estoque (Identificacao) VALUES ('Setor D');

INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Paulo Roberto Ltda.', '27.823.142/0001-98');
INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Dias Alves Ltda.', '72.923.787/0001-79');

INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Paulo Roberto Ltda.', '27.823.142/0001-98');
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Dias Alves Ltda.', '72.923.787/0001-79');

INSERT INTO Categoria (Identificacao) VALUES ('Informatica');
INSERT INTO Categoria (Identificacao) VALUES ('Escritorio');
INSERT INTO Categoria (Identificacao) VALUES ('Papelaria');
INSERT INTO Categoria (Identificacao) VALUES ('Decoracao');

INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES ('Borracha', 'Borracha Branca', 0.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES ('Mesa Digital', 'Mesa USB', 195.99);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES ('Folhas Oficcil', 'Folhas A$ 500fl', 89.90);

INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (2, 1);
INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (3, 2);

INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) VALUES (2, 1);
INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) VALUES (3, 2);

INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade) VALUES (2, 1, 10);
INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade) VALUES (3, 2, 15);

INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES (1, 1, 1, '0000000001', '2022-09-09', 0, 10, 10);

INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (2, 2);
INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (2, 3);

INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (2, 1, 5.75);
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (2, 2, 4.25);