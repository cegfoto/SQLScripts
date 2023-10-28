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


