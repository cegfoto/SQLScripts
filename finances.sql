CREATE TABLE types_of_movements (
	id int primary key auto_increment,
    name varchar(255)
);

CREATE TABLE institutions (
	id int primary key auto_increment,
    name varchar(255) not null
);

CREATE TABLE financial_movements (
	id int primary key auto_increment,
    id_type_movements int not null,
    id_institution int not null,
    value float(18,2) not null,
    description varchar(255),
    date_movement date,
    FOREIGN KEY (id_type_movements) REFERENCES types_of_movements(id),
    FOREIGN KEY (id_institution) REFERENCES institutions(id)
);

INSERT INTO institutions(name) VALUES ('ITAU');
INSERT INTO institutions(name) VALUES ('PIC PAY');
INSERT INTO institutions(name) VALUES ('RICO');
INSERT INTO institutions(name) VALUES ('NU BANK');
INSERT INTO institutions(name) VALUES ('NU INVEST');

INSERT INTO types_of_movements(name) VALUES ('MERCADO');
INSERT INTO types_of_movements(name) VALUES ('ESPORTE');
INSERT INTO types_of_movements(name) VALUES ('ALIMENTAÇÃO');
INSERT INTO types_of_movements(name) VALUES ('SAÚDE');
INSERT INTO types_of_movements(name) VALUES ('FAMÍLIA E AMIGOS');
INSERT INTO types_of_movements(name) VALUES ('INVESTIMENTO');
INSERT INTO types_of_movements(name) VALUES ('SALÁRIO');
INSERT INTO types_of_movements(name) VALUES ('RETORNO INVESTIMENTO');
INSERT INTO types_of_movements(name) VALUES ('CASA');
INSERT INTO types_of_movements(name) VALUES ('DOAÇÃO');
INSERT INTO types_of_movements(name) VALUES ('STREAMING E GAMES');
INSERT INTO types_of_movements(name) VALUES ('EDUCAÇÃO');
INSERT INTO types_of_movements(name) VALUES ('TRANSPORTE');
INSERT INTO types_of_movements(name) VALUES ('VIAGEM');
INSERT INTO types_of_movements(name) VALUES ('BENS DE CONSUMO');
INSERT INTO types_of_movements(name) VALUES ('CINEMA SHOWS SHOPPING ETC');