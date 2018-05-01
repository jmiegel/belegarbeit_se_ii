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
Unsere Software ist durch die Mitarbeiter der Bibliothek über eine graphische Nutzeroberfläche (GUI) bedienbar. Über diese werden alle zur Verwaltung der Buchausleihe benötigten Funktionen (siehe 5. Funktionale Anforderungen), bereitgestellt. Eine übersichtliche Strukturierung der Nutzeroberfläche sowie verständliche Fehlermeldungen stellen eine hohe Benutzerfreundlichkeit sicher.

![](https://github.com/jmiegel/belegarbeit_se_ii/blob/5_Benutzerschnittstelle/Oberflaechenprototyp_2_a.png)
![](https://github.com/jmiegel/belegarbeit_se_ii/blob/5_Benutzerschnittstelle/Oberflaechenprototyp_2_b.png)

## 5.Funktionale Anforderungen
### 5.1 Interne Bücherausleihe verwalten
#### Anwendungsfalldiagramm
![](https://user-images.githubusercontent.com/25896546/39181054-c398fb40-47b8-11e8-9acf-b9f97448968f.jpg)
#### Satzschablonen nach Chris Rupp
Das SW-System muss eine Ausleihe ermöglichen.  
Das SW-System muss eine Rückgabe ermöglichen.  
Das SW-System muss eine Verlängerung ermöglichen.  
Das SW-System sollte einen Rückgabebeleg erstellen.  
Das SW-System sollte Benachrichtigung über eine anstehende Abgabe bereitstellen.  

### 5.2 Buch ausleihen
#### Aktivitätsdiagramm
![](https://user-images.githubusercontent.com/38462344/39356264-e0f54d52-4a0f-11e8-867b-1bae9b47ee42.JPG)
#### Zustandsdiagramm
![](https://user-images.githubusercontent.com/38462344/39356269-e148b4a6-4a0f-11e8-9a2c-b88d88baea44.JPG)
### 5.3 Ausleihe verlängern
#### Aktivitätsdiagramm
![](https://user-images.githubusercontent.com/38462344/39356266-e12b5d2a-4a0f-11e8-9c69-15dc343b06fd.JPG)
#### Zustandsdiagramm
![](https://user-images.githubusercontent.com/38462344/39356271-e18247e8-4a0f-11e8-86f1-1217f7badcca.JPG)
### 5.4 Buch zurückgeben
#### Aktivitätsdiagramm
![](https://user-images.githubusercontent.com/38462344/39356265-e110435a-4a0f-11e8-885a-16047ff181b1.JPG)
#### Zustandsdiagramm
![](https://user-images.githubusercontent.com/38462344/39356270-e1650b24-4a0f-11e8-807e-f664e99f7346.JPG)

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

