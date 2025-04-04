create table gravadora(
	idgravadora SERIAL PRIMARY KEY,
	nome varchar(45),
	endereco varchar(45),
	telefone varchar(45),
	site varchar(45),
	contato varchar(20)
);

create table cd(
	idcd SERIAL PRIMARY KEY,
	nome varchar(45),
	preco_venda varchar(45),
	data_lancamento varchar(45),
	idgravadora INT REFERENCES gravadora(idgravadora),
	cd_indicado INT REFERENCES cd(idcd)
);

create table musica(
	idmusica SERIAL PRIMARY KEY,
	nome varchar(45),
	duracao NUMERIC(3,2)
);

create table faixa(
	idcd INT REFERENCES cd(idcd),
	idmusica INT REFERENCES musica(idmusica),
	numero_faixa INT,
	PRIMARY KEY(idcd, idmusica)
);

create table compositor(
	idcompositor SERIAL PRIMARY KEY,
	nome varchar(45)
);

create table composicao(
	idcompositor INT REFERENCES compositor(idcompositor),
	idmusica INT REFERENCES musica(idmusica),
	PRIMARY KEY(idcompositor, idmusica)
);
