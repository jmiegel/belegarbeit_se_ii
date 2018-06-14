create Table bibliotheksNutzer(
	nutzerid	CHAR(5) NOT NULL PRIMARY KEY,
	abDatum		DATE,
	mahnung		INT
	--Datum - Wann der Nutzer nicht mehr gemeldet ist
)
--mahung, 0 = keine Mahnung vorhanden, 1 = eine oder mehrere Mahnungen

create Table bibliotheksBuch(
	signatur	CHAR(8) NOT NULL PRIMARY KEY,
	titel		VARCHAR(50) NOT NULL,
	autor		VARCHAR(50) NOT NULL,
	exTyp		INT,
	vorgemerkt	INT
)

--exTyp = Exemplar Typ - 0 = präsenz Exemplar, 1 = Ausleihbar
--vorgemerkt = ob das buch reserviert ist. 0 = nicht reserviert, 1 = reserviert

create Table ausleihe(
	nutzerid	CHAR(5) NOT NULL,
	signatur	CHAR(8) NOT NULL,
	rückgabeDatum DATE,
	PRIMARY KEY (nutzerid, signatur),
	FOREIGN KEY (nutzerid) REFERENCES bibliotheksNutzer(nutzerid),
	FOREIGN KEY (signatur) REFERENCES bibliotheksBuch(signatur),
	ON DELETE CASCADE
	UNIQUE (signatur)
	
)


--Nutzer
INSERT INTO bibliotheksNutzer VALUES ('10001', 'Winkler', 'Annete', 0)
INSERT INTO bibliotheksNutzer VALUES ('10002', 'Thomas' , 'Leonie', 0)
INSERT INTO bibliotheksNutzer VALUES ('10003', 'Richter', 'Ingolf', 0)
INSERT INTO bibliotheksNutzer VALUES ('10004', 'Zander' , 'Julius', 0)
INSERT INTO bibliotheksNutzer VALUES ('10005', 'Schaaf' , 'Jennifer', 0)
INSERT INTO bibliotheksNutzer VALUES ('10006', 'Winkler', 'Günther', 0)
INSERT INTO bibliotheksNutzer VALUES ('10007', 'von Gerhard' , 'Dietmar', 0)
INSERT INTO bibliotheksNutzer VALUES ('10008', 'Barth', 'Mario', 0)
INSERT INTO bibliotheksNutzer VALUES ('10009', 'Gender' , 'Horst', 0)
INSERT INTO bibliotheksNutzer VALUES ('10010', 'Irving' , 'Kyrie', 0)
INSERT INTO bibliotheksNutzer VALUES ('10011', 'Schulte' , 'Michael', 0)
INSERT INTO bibliotheksNutzer VALUES ('10012', 'Abu-Bakar' , 'Mohammed', 0)
INSERT INTO bibliotheksNutzer VALUES ('10013', 'Schuhmacher' , 'Jordan', 0)
INSERT INTO bibliotheksNutzer VALUES ('10014', 'Schuhmacher' , 'Thorsten', 1)
INSERT INTO bibliotheksNutzer VALUES ('10015', 'Müller' , 'Marcel', 1)
INSERT INTO bibliotheksNutzer VALUES ('10016', 'Gentschen' , 'Micaela', 0)
INSERT INTO bibliotheksNutzer VALUES ('10017', 'Abdin' , 'Julia', 0)
INSERT INTO bibliotheksNutzer VALUES ('10018', 'Zimmer' , 'Lorel', 0)
INSERT INTO bibliotheksNutzer VALUES ('10019', 'Podany' , 'Gudrun', 0)
INSERT INTO bibliotheksNutzer VALUES ('10020', 'Peltsch' , 'Gaby', 0)

select * from bibliotheksNutzer

--Bücher
INSERT INTO bibliotheksBuch VALUES ('10000001', 'Das Geisterhaus' , 'Isabel Allende', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000002', 'Die Säulen der Erde' , 'Ken Follett', 0, 1)
INSERT INTO bibliotheksBuch VALUES ('10000003', 'Das Parfum - Die Geschichte eines Mörders' , 'Patrick Süskind', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000004', 'Der kleine Prinz' , 'Antoine de Saint-Exupery', 0, 1)
INSERT INTO bibliotheksBuch VALUES ('10000005', 'Der Medicus' , 'Noah Gordon', 0, 1)
INSERT INTO bibliotheksBuch VALUES ('10000006', 'Der Alchimist' , 'Paulo Coelho', 0, 1)
INSERT INTO bibliotheksBuch VALUES ('10000007', 'Harry Potter und der Stein der Weisen' , 'Joanne K. Rowling', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000008', 'Harry Potter und der Stein der Weisen' , 'Joanne K. Rowling', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000009', 'Harry Potter und der Stein der Weisen' , 'Joanne K. Rowling', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000010', 'Die Päpstin' , 'Donna Woolfolk Cross', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000011', 'Tintenherz' , 'Cornelia Funke', 0, 1)
INSERT INTO bibliotheksBuch VALUES ('10000012', 'Der Herr der Ringe' , 'John R. R. Tolkien', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000013', 'Der Herr der Ringe' , 'John R. R. Tolkien', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000014', 'Der Herr der Ringe' , 'John R. R. Tolkien', 0, 0)
INSERT INTO bibliotheksBuch VALUES ('10000015', 'Der Vorleser' , 'Bernhard Schlink', 1, 0)

select * from bibliotheksBuch

--Ausleihe
INSERT INTO ausleihe VALUES('10001', '10000015', '2018-5-29')
INSERT INTO ausleihe VALUES('10001', '10000005', '2018-5-29')
INSERT INTO ausleihe VALUES('10001', '10000007', '2018-5-29')
INSERT INTO ausleihe VALUES('10005', '10000001', '2018-6-6')

select * from ausleihe