create database sprint1atv;
use sprint1atv;

-- 1
create table Professor(
idProfessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40)
 );
 
 insert into professor (nome,sobrenome,especialidade1,especialidade2) values
 ('Pedro', 'Afonso', 'Matematica', 'fisica'),
 ('Maria', 'Eduarda', 'Informatica', 'ingles'),
 ('Gabriel', 'Macedo', 'tecnologia', 'dirigir' ),
 ('Caio', 'Santos', 'lógica', 'frontEnd'),
 ('Eduardo', 'damasceno', 'backEnd', 'binários'),
 ('Monica', 'Herrera', 'TI', 'documentação');
 select*from professor;
 
 
 create table disciplina(
 idDisc int primary key auto_increment,
 nomeDisc varchar(45),
 fkProfessor int,
 foreign key (fkProfessor) references professor (idProfessor)
 );
 
 insert into disciplina (nomedisc) value
 ('Algoritmo'),
 ('Arquitetura Computacional'),
 ('Banco de dados');
 select * from disciplina;
 
 update disciplina set fkProfessor = 4 where idDisc = 1;
 update disciplina set fkProfessor = 6 where idDisc = 3;
 update disciplina set fkProfessor = 5 where idDisc = 2;
 update disciplina set fkProfessor = 3 where idDisc = 1;
 update disciplina set fkProfessor = 2 where idDisc = 3;
 update disciplina set fkProfessor = 1 where idDisc = 2;
 
 select nome, sobrenome, nomeDisc from disciplina join professor on fkProfessor = idProfessor;
 select nomeDisc, nome from disciplina join professor on fkProfessor = idProfessor;
 select * from disciplina join professor on fkProfessor = idProfessor where sobrenome = 'Afonso';
 select especialidade1, nomeDisc from disciplina join professor on fkProfessor = idProfessor where nome = 'Maria' 
 order by especialidade1;
 
 -- 2
 create table curso(
 idCurso int primary key auto_increment	,
 nome varchar(50),
 sigla char(3),
 coordenador varchar(50)
 );
 
 insert into curso (nome, sigla, coordenador) values
 ('Análise de Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
 ('Ciência da Computação', 'CC', 'João'),
 ('Sistema da Informação', 'SI', 'Maria');
select * from curso;

create table aluno(
idAluno int primary key auto_increment,
nomeAluno varchar(40),
sobrenomeAluno varchar(40), 
fkCurso int 
);



insert into aluno (nomeAluno, sobrenomeAluno, alunoCurso) values
('Matheus', 'Martins', 'ads'),
('Pedro', 'Pepol', 'si'),
('Vinicius', 'Ryann', 'cc');
select * from aluno;

 select nome, sobrenomeAluno, nome from aluno join curso on fkCurso = idCurso;
 select nome, nomeCurso from aluno join curso on fkCurso = idCurso;
 select * from aluno join curso on fkCurso = idCurso where sobrenomeAluno = 'Martins';

