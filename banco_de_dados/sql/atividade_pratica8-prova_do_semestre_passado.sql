create database venda;
use venda;

create table endereco(
idEndereco int primary key auto_increment,
bairro varchar(45),
cep char(8),
numero int
);

create table cliente(
idCliente int primary key auto_increment,
nomeCliente varchar(45),
email varchar(45),
fkEndereco int,
foreign key (fkEndereco) references endereco(idEndereco),
fkClienteIndicado int,
foreign key cliente_fkClienteIndicado (fkClienteIndicado) references cliente (idCliente)
);

create table produto(
idProduto int primary key auto_increment,
nomeProduto varchar(45),
descricao varchar(45),
preco decimal(10,2)
);

-- TABELA ASSOCIATIVA
create table vendas(
IDVendas int auto_increment,
fkCliente int,
foreign key (fkCliente) references cliente (idCliente),
fkEndereco int,
foreign key (fkEndereco) references endereco (IDEndereco),
fkProduto int,
foreign key (fkProduto) references produto (idProduto),
totalVendas int,
dtVendas date,
primary key(idVendas, fkCliente, fkEndereco, fkProduto)

-- ---- COMANDOS -----




