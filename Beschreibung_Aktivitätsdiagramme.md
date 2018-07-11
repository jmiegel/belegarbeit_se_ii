Beschreibung Aktivitätsdiagramme
Buch ausleihen:
Vom Nutzer wird über den Mitarbeiter der Leihwunsch ins System eingegeben. Dort wird dieser auf Vollständigkeit überprüft und bei Unvollständigkeit eine Fehlermeldung ausgegeben sodass der Mitarbeiter fehlende Daten mit dem Nutzer ergänzen kann. Wenn der Leihwunsch dann vollständig ist wird in der Datenbank überprüft ob das entsprechende Buch verfügbar ist. Sollte es nicht verfügbar sein so wird eine Absage ausgegeben. Sonst wird die Ausleihe in der Datenbank abgespeichert und der Nutzer erhält seinen Leihschein.

Buch verlängern:
Vom Nutzer wird über den Mitarbeiter der Verlängerungswunsch ins System eingegeben. In der Datenbank wird die bestehende Leihe überprüft. Sollte die bestehende Leihe überzogen sein wird der Verlängerungsvorgang abgebrochen und eine Absage ausgegeben (der Nutzer müsste erst seine Strafgebühr zahlen). Wenn die Leihe nicht überzogen ist wird in der Datenbank überprüft ob eine Reservierung für das Buch vorliegt. Sollte dies der Fall sein so wird der Verlängerungsvorgang abgebrochen und es wird eine Absage ausgegeben. Andernfalls wird die Verlängerung in der Datenbank abgespeichert und ein neuer Leihschein wird für den Nutzer gedruckt.

Buch zurückgeben:
Vom Nutzer wird über den Mitarbeiter der Rückgabewunsch ins System eingegeben. In der Datenbank wird das zurückzugebene Buch überprüft. Sollte es sich um das falsche Buch handeln so wird der Vorgang abgebrochen und eine Fehlermeldung ausgegeben. Sonst wird die Rückgabe in der Datenbank gespeichert, ggf. eine Meldung an denjenigen der das Buch reserviert hat gesendet und der Rückgabebeleg für den Nutzer ausgedruckt.
