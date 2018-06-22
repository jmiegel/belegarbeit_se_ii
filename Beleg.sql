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
	vorgemerkt	CHAR(5), --nutzerID
)
--vorgemerkt = NULL wenn keiner es vorgemerkt hat sonst die nutzerID

create Table ausleihe(
	nutzerid	CHAR(5) NOT NULL,
	signatur	CHAR(8) NOT NULL,
	rückgabeDatum DATE,
	PRIMARY KEY (nutzerid, signatur),
	FOREIGN KEY (nutzerid) REFERENCES bibliotheksNutzer(nutzerid),
	FOREIGN KEY (signatur) REFERENCES bibliotheksBuch(signatur)
		ON DELETE CASCADE,
	UNIQUE (signatur)
	
)

DROP Table bibliotheksBuch

--Nutzer
INSERT INTO bibliotheksNutzer VALUES ('10001', '2019-04-01', 0)
INSERT INTO bibliotheksNutzer VALUES ('10002', '2019-05-21', 0)
INSERT INTO bibliotheksNutzer VALUES ('10003', '2018-04-03', 0)
INSERT INTO bibliotheksNutzer VALUES ('10004', '2020-01-19', 0)
INSERT INTO bibliotheksNutzer VALUES ('10005', '2019-06-29', 0)
INSERT INTO bibliotheksNutzer VALUES ('10006', '2019-07-09', 0)
INSERT INTO bibliotheksNutzer VALUES ('10007', '2019-10-12', 0)
INSERT INTO bibliotheksNutzer VALUES ('10008', '2019-12-22', 0)
INSERT INTO bibliotheksNutzer VALUES ('10009', '2019-05-29', 0)
INSERT INTO bibliotheksNutzer VALUES ('10010', '2019-07-29', 0)
INSERT INTO bibliotheksNutzer VALUES ('10011', '2019-08-09', 0)
INSERT INTO bibliotheksNutzer VALUES ('10012', '2019-11-30', 0)
INSERT INTO bibliotheksNutzer VALUES ('10013', '2019-02-20', 0)
INSERT INTO bibliotheksNutzer VALUES ('10014', '2018-10-29', 1)
INSERT INTO bibliotheksNutzer VALUES ('10015', '2019-01-26', 1)
INSERT INTO bibliotheksNutzer VALUES ('10016', '2019-08-29', 0)
INSERT INTO bibliotheksNutzer VALUES ('10017', '2019-06-22', 0)
INSERT INTO bibliotheksNutzer VALUES ('10018', '2019-04-30', 0)
INSERT INTO bibliotheksNutzer VALUES ('10019', '2019-03-29', 0)
INSERT INTO bibliotheksNutzer VALUES ('10020', '2019-05-29', 0)

select * from bibliotheksNutzer

--Bücher
INSERT INTO bibliotheksBuch VALUES ('10000001', 'Das Geisterhaus' , 'Isabel Allende', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000002', 'Die Säulen der Erde' , 'Ken Follett', 0, '10019')
INSERT INTO bibliotheksBuch VALUES ('10000003', 'Das Parfum - Die Geschichte eines Mörders' , 'Patrick Süskind', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000004', 'Der kleine Prinz' , 'Antoine de Saint-Exupery', 0, '10017')
INSERT INTO bibliotheksBuch VALUES ('10000005', 'Der Medicus' , 'Noah Gordon', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000006', 'Der Alchimist' , 'Paulo Coelho', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000007', 'Harry Potter und der Stein der Weisen' , 'Joanne K. Rowling', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000008', 'Harry Potter und der Stein der Weisen' , 'Joanne K. Rowling', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000009', 'Harry Potter und der Stein der Weisen' , 'Joanne K. Rowling', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000010', 'Die Päpstin' , 'Donna Woolfolk Cross', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000011', 'Tintenherz' , 'Cornelia Funke', 0, '10015')
INSERT INTO bibliotheksBuch VALUES ('10000012', 'Der Herr der Ringe' , 'John R. R. Tolkien', 1, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000013', 'Der Herr der Ringe' , 'John R. R. Tolkien', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000014', 'Der Herr der Ringe' , 'John R. R. Tolkien', 0, NULL)
INSERT INTO bibliotheksBuch VALUES ('10000015', 'Der Vorleser' , 'Bernhard Schlink', 1, NULL)

select * from bibliotheksBuch

--Ausleihe
INSERT INTO ausleihe VALUES('10001', '10000014', '2018-5-29')
INSERT INTO ausleihe VALUES('10001', '10000005', '2018-5-29')
INSERT INTO ausleihe VALUES('10001', '10000007', '2018-5-29')
INSERT INTO ausleihe VALUES('10005', '10000001', '2018-6-6')

select * from ausleihe