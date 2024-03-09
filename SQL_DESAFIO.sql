create database Sopão_Jurema;
use Sopão_Jurema;

/* DESAFIO_Logico: */

CREATE TABLE Organizacao(
    CNPJ varchar(20) PRIMARY KEY,
    Nome varchar(20),
    Telefone varchar(20),
    Endereco varchar(50)
);

CREATE TABLE Sopao(
    id_sopao int PRIMARY KEY,
    Sabor varchar(20),
    Custo int,
    Data_Producao date
);

CREATE TABLE Usuario(
    id_Usuario int PRIMARY KEY,
    Nome varchar(50),
    Cadastro_Unico varchar(20),
    CPF varchar(20),
    Data_nascimento date
);

CREATE TABLE Funcionario(
    id_Funcionario int PRIMARY KEY,
    Nome varchar(50),
    CPF varchar(20),
    Endereco varchar(50),
    Telefone varchar(20),
    Data_nascimento date
);
 
    
alter table Funcionario add column salario double;

insert into Organizacao (CNPJ, Nome, Telefone, Endereco)
values ("80121881000138", "Sopão_Jurema", "83325882804", "Rua Joaquim Bernardino Ribeiro, 45"),
("80121881000138-2", "Sopão_Iracema", "8328479982", "Via de Pedestre Gigantes, 2005"),
("80121881000138-3", "Sopão_Jussara", "8329650052", "Rua dos Catetos, 132");

insert into Sopao ( id_sopao, Sabor, Custo, Data_Producao)
values (12, "Carne", 130, '2015-08-12'),
(15, "Frango", 130, '2015-08-15'),
(18, "Cabeça de Galo", 130, '2015-08-18'),
(25, "Carne", 146, '2015-08-25');

insert into Usuario (id_Usuario, Nome, Cadastro_Unico, CPF, Data_nascimento)
values (1,"Isabella Emily Silva", "394772209", "03812518023", '1982-05-12'),
(5,"Marcelo José Duarte", "122361532", "18938882829", '1994-12-01'),
(25,"Rafaela Cláudia Lopes", "190912832", "96771066940", '2001-03-03'),
(36,"Vanessa Elza Novaes", "373693400", "69893719356", '1978-02-2');

insert into Funcionario(id_Funcionario, Nome, CPF, Endereco, Telefone, Data_nascimento, salario)
values (1,"Miguel Erick Guilherme", "89396723720", "Rua Nossa Senhora da Candelária", "83981802329", '1993-07-22', 1300),
(2,"Diogo Renato Brito", "51260550974", "Rua Francisco Caldeira Castelo Branco","8335689878", '2000-01-21', 1300),
(3,"Márcio Edson da Rosa", "190912832", "Rua C", "83871266942",  '2000-03-08', 1800),
(4,"Yasmin Julia Yasmin de Paula", "22978032650", "Rua Pioneiro Belmiro Dallalio", "83997732080", '1978-02-2', 2000);

#drop database Sopão_Jurema;
#UPDATE Funcionario
#SET salario = 1300.00
#WHERE id_Funcionario = 1;

#UPDATE Funcionario
#SET salario = 1300.00
#WHERE id_Funcionario = 2;

#UPDATE Funcionario
#SET salario = 1800.00
#WHERE id_Funcionario = 3;

#UPDATE Funcionario
#SET salario = 2000.00
#WHERE id_Funcionario = 4;

select * from Organizacao;

select * from Sopao;

select * from Usuario;

select * from Funcionario;





