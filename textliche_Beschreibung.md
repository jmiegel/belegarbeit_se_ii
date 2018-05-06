# Pflichtenheft
## 1. Ausgangssituation
Langes Warten bei Anfragen an das Datenverwaltungssystem und bei der Verbuchung von Verwaltungsvorgängen wird von den Kunden und den Mitarbeitern einer Bibliothek als sehr unangenehm empfunden. Sowohl Mitarbeiter als auch Kunden einer Bibliothek erwarten daher eine leicht zu bedienende und effizient arbeitende Software, die den Mitarbeitern die Erledigung der Verwaltungsaufgaben einer Bibliothek erleichtert. Veraltete Softwaresysteme sind jedoch oft ineffizient und nicht mehr zeitgemäß, da viele der aktuellen Methoden und Funktionen zur umfassenden Datenverwaltung nicht implementiert sind. 

## 2. Zielbestimmung
Um die alltäglichen Verwaltungsarbeiten zu meistern, ist eine intelligente Softwarelösung notwendig.
Die interne Verwaltung der Buchausleihe stellt dabei einen zentralen Baustein eines Software-Systems zur Bibliotheksverwaltung dar und soll im Rahmen dieses Projekts implementiert werden.
Das Software-System muss übersichtlich, leicht verständlich und von jedem Bibliotheksmitarbeiter bedienbar sein. Dabei sollte die Effizienz des Systems nicht beeinträchtigt sein. Eine saubere und klar strukturierte Programmierung des Verwaltungssystems trägt dazu bei, die vielseitigen Aufgaben trotz großer Datenmengen jederzeit zu bearbeiten. Eine optimierte Zusammensetzung von Software-System und Datenbank ist dabei maßgeblich für die Effizienz und Effektivität.

## 3. Softwareumgebung
Um die Zielbestimmungen zu gewährleisten, verwenden wir zur Implementierung des Software-Systems: C++ gekoppelt mit dem DatenbankManagementSystem (DBMS) MySQL von Oracle. Das System arbeitet sowohl für Linux, Windows als auch auf MacOS. 

## 4.Benutzerschnittstellen
Unsere Software ist durch die Mitarbeiter der Bibliothek über eine graphische Nutzeroberfläche (GUI) bedienbar. Über diese werden alle zur Verwaltung der Buchausleihe benötigten Funktionen, bereitgestellt. Eine übersichtliche Strukturierung der Nutzeroberfläche sowie verständliche Fehlermeldungen stellen eine hohe Benutzerfreundlichkeit sicher. Folgende Abbildungen geben einen ersten beispielhaften Eindruck der Benutzeroberfläche.

![](https://github.com/jmiegel/belegarbeit_se_ii/blob/5_Benutzerschnittstelle/Oberflaechenprototyp_2_a.png)
![](https://github.com/jmiegel/belegarbeit_se_ii/blob/5_Benutzerschnittstelle/Oberflaechenprototyp_2_b.png)

## 5.Funktionale Anforderungen
### 5.1 Kontext der Bibliothek
Um die Bibliothek zu nutzen und zu verwalten haben unterschiedliche Personengruppen Zugriff auf das System. Die Gruppe der Benutzer ist abstrakt und  enthält die Angehörigen der HTW Dresden, das heißt Studenten bzw. Mitarbeiter, und sonstige Benutzer. Aus der Zugehörigkeit zu den unterschiedlichen Benutzergruppen ergeben sich unterschiedliche Rahmenbedingungen bzgl. der Nutzungsmöglichkeiten des Buchbestands. Das von uns entwickelte System sieht deshalb als Benutzer lediglich die Studenten der HTW Dresden vor. Es besteht jedoch die Möglichkeit, das System um die beiden anderen Benutzergruppen zu einem späteren Zeitpunkt zu erweitern. Personen, die Buchhändler, das Dezernat HF und Partnerbibliotheken spielen für die von uns bearbeiteten Anwendungsfälle jedoch keine Rolle und sollen daher nicht näher betrachtet werden. 
![](https://user-images.githubusercontent.com/25896546/39617039-683b8538-4f7e-11e8-80f6-6034008adc0f.jpg)

### 5.2 Übersicht über die Anwendungsfälle eines Systems zur Bibliotheksverwaltung und -nutzung
Damit das Gesamtsystem von den oben genannten Personengruppen genutzt werden kann, sollte das Suchen im Katalog, die Verwaltung der Benutzerdaten, die Verwaltung von Mahnungen, die Verwaltung der internen Bücherausleihe, die Verwaltung der Fernleihe und die Verwaltung des Bestands ermöglicht werden.
Das von uns entwickelte System wird lediglich den Anwendungsfall "Interne Bücherausleihe verwalten" ermöglichen.

![](https://user-images.githubusercontent.com/25896546/39617038-6822e104-4f7e-11e8-8dac-0203c5f8ba26.jpg)

### 5.3 Interne Bücherausleihe verwalten
#### 5.3.1 Anwendungsfälle des Teilsystems interne Bücherausleihe verwalten
Die Verwaltung der internen Bücherausleihe gliedert sich in die drei Anwendungsfälle "Buch ausleihen", "Ausleihe verlängern" und "Buch zurückgeben". Dabei geht die Initialisierung des Ereignisses vom Wunsch des Benutzers aus. Der Mitarbeiter der Bibliothek bedient lediglich das von uns entwickelte System.

![](https://user-images.githubusercontent.com/25896546/39179230-14020f90-47b4-11e8-8223-50829466763b.jpg)

#### 5.3.2 Buch ausleihen
#### Aktivitätsdiagramm
![](https://user-images.githubusercontent.com/38462344/39565543-ab2d24da-4eb8-11e8-8fd1-4b24a6027b51.JPG)

### 5.3.3 Ausleihe verlängern
#### Aktivitätsdiagramm
![](https://user-images.githubusercontent.com/38462344/39565545-ab62d4e0-4eb8-11e8-8561-6bafd10a936b.JPG)

### 5.3.4 Buch zurückgeben
#### Aktivitätsdiagramm
![](https://user-images.githubusercontent.com/38462344/39565544-ab4a37d2-4eb8-11e8-8c96-dc6c9f564b89.JPG)

### 5.4 Satzschablonen nach Chris Rupp
Das SW-System muss eine Ausleihe ermöglichen.  
Das SW-System muss eine Rückgabe ermöglichen.  
Das SW-System muss eine Verlängerung ermöglichen.  
Das SW-System sollte einen Rückgabebeleg erstellen.  
Das SW-System sollte Benachrichtigung über eine anstehende Abgabe bereitstellen.  

## 6. Anforderungen an das Datenmodell
### 6.1 Datenstrukturen
#### Leihwunsch
Bibo_ID
+Buch
+Ausleihdatum

#### Leihschein
Leihschein

#### Absage
Absage

#### Verlängerungswunsch
Bibo_ID  
+Buch  
+Leihschein  
+Ausleihdatum  

#### Rückgabewunsch
Bibo_ID  
+Buch  
+Leihschein  
+Ausleihdatum  

#### Rückgabebeleg
Rückgabebeleg

#### Benachrichtigung
Benachrichtigung

### 6.2 ERM

## 7. Qualitätsanforderungen

## 8. Rahmenbedingungen

## 9. Anforderungen an die Dokumentation

## 10. Abnahmekriterien

## 11. Glossar

## 12. Anhang

