CREATE TABLE potion (
	num_potion INT NOT NULL AUTO_INCREMENT,
	lib_potion VARCHAR(40),
	formule VARCHAR(30),
	constituant_principal VARCHAR(30),
	PRIMARY KEY (num_potion)
)
ENGINE=INNODB;

CREATE TABLE qualite (
	num_qualite INT NOT NULL AUTO_INCREMENT,
	lib_qualite VARCHAR(30),
	PRIMARY KEY (num_qualite)
)
ENGINE=INNODB;

CREATE TABLE province (
	num_province INT NOT NULL AUTO_INCREMENT,
	nom_province VARCHAR(30),
	nom_gouverneur VARCHAR(30),
	PRIMARY KEY (num_province)
)
ENGINE=INNODB;

CREATE TABLE village (
	num_village INT NOT NULL AUTO_INCREMENT,
	nom_village VARCHAR(30),
	nb_huttes INT,
	num_province INT,
	PRIMARY KEY (num_village),
	CONSTRAINT FOREIGN KEY (num_province) REFERENCES province (num_province)
)
ENGINE=INNODB;

CREATE TABLE habitant (
	num_hab INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(30),
	age INT,
    	num_qualite INT,
	num_village INT,
	PRIMARY KEY (num_hab),
	CONSTRAINT FOREIGN KEY (num_qualite) REFERENCES qualite (num_qualite),
	CONSTRAINT FOREIGN KEY (num_village) REFERENCES village (num_village)
)
ENGINE=INNODB;

CREATE TABLE fabriquer (
	num_potion INT NOT NULL,
	num_hab INT NOT NULL,
	PRIMARY KEY (num_potion, num_hab),
	CONSTRAINT FOREIGN KEY (num_potion) REFERENCES potion (num_potion),
	CONSTRAINT FOREIGN KEY (num_hab) REFERENCES habitant (num_hab)
)
ENGINE=INNODB;

CREATE TABLE absorber (
	num_potion INT NOT NULL,
	date_a DATETIME,
	num_hab INT NOT NULL,
	quantite INT,
	PRIMARY KEY (num_potion, date_a, num_hab),
	CONSTRAINT FOREIGN KEY (num_potion) REFERENCES potion (num_potion),
	CONSTRAINT FOREIGN KEY (num_hab) REFERENCES habitant (num_hab)
)
ENGINE=INNODB;

CREATE TABLE resserre (
	num_resserre INT NOT NULL AUTO_INCREMENT,
	nom_resserre VARCHAR(30),
	superficie INT,
	num_village INT,
	PRIMARY KEY (num_resserre),
	CONSTRAINT FOREIGN KEY (num_village) REFERENCES village (num_village)
)
ENGINE=INNODB;

CREATE TABLE categorie (
	code_cat CHAR(3) NOT NULL UNIQUE,
	nom_categ VARCHAR(50),
	nb_points INT,
	PRIMARY KEY (code_cat)
)
ENGINE=INNODB;

CREATE TABLE trophee (
	num_trophee INT NOT NULL AUTO_INCREMENT,
	date_prise DATETIME,
	code_cat CHAR(3),
	num_preneur INT,
	num_resserre INT,
	PRIMARY KEY (num_trophee),
	CONSTRAINT FOREIGN KEY (code_cat) REFERENCES categorie (code_cat),
	CONSTRAINT FOREIGN KEY (num_preneur) REFERENCES habitant (num_hab),
	CONSTRAINT FOREIGN KEY (num_resserre) REFERENCES resserre (num_resserre)
)
ENGINE=INNODB;
	
	

