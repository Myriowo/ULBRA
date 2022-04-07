INSERT INTO produtos (id, nome, valor, saldo)
VALUES
(1, 'Computador Gamer Intel i5-10400F', 10199.25, 10),
(2, 'Computador Gamer AMD Ryzen 5 5600G', 11845.90, 3),
(3, 'Computador Gamer Intel i7-10700F', 11500, NULL),
(4, 'Teclado Mecânico Gamer HYPERX RGB Switch Blue', 500, 5),
(5, 'Teclado sem fio Logitech', 250, NULL),
(6, 'Laptop da xuxa PRO ULTRA GAMER', 20, 8),
(7, 'Mousepad simples', 15, 50);

INSERT INTO orcamentos (id, data_or, status_or)
VALUES
(120, '2013-09-15', 'Y'),
(121, '2013-10-10', 'N'),
(122, '2013-12-23', 'Y'),
(123, '2014-07-07', 'Y'),
(124, '2014-07-15', 'N'),
(125, '2014-07-23', 'Y');

INSERT INTO orcamentos_itens (id_prod, id_orc, valor_unit, qtd, valor_total_item)
VALUES
(1, 123, 10199.25, 2, 20398.50),
(3, 120, 11500, 1, 11500),
(4, 122, 500, 3, 1500),
(5, 124, 250, 2, 500),
(6, 125, 20, 5, 100);
