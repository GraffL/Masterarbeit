--------------------------------------------------------------------------------------------------------------------------------
## A universal construction generating potential games ##
	by Nikolai S. Kukushkin | ACLU.pdf
	
beschreibt Games with (additive) Common Local Utilities (CLU): Erweiterung des Konzeptes ungewichteter Auslastungsspiele - Kosten pro Fabrik h�ngen nun von der Menge der diese w�hlenden Spieler und deren gew�hlten Strategien ab (aus der gew�hlten Strategie ergeben sich die gew�hlten Fabriken, aber nicht notwendigerweise umgekehrt). Au�erdem darf der Strategieraum und die Menge der Fabriken unendlich gro� sein.

Eine Fabrik hei�t regul�r, wenn sie folgende zwei Bedingungen erf�llt:
* Haben nicht alle Spieler eine bestimmte Fabrik gew�hlt, so �ndern sich deren Kosten nicht, wenn ein einzelner der sie w�hlenden Spieler eine andere Strategie ausw�hlt (die aber immer noch diese Fabrik ausw�hlt).
* Das Austauschen eines die Fabrik w�hlenden Spielers durch einen anderen �ndert die Kosten nicht.

Prop: Ist eine Fabrik regul�r, so h�ngen ihre Kosten nur von der Zahl der sie w�hlenden Spieler ab (nicht von deren Identit�t oder genauen Strategie), es sei denn alle Spieler w�hlen die Fabrik.

Beob: Auslastungsspiele sind regu�r

Zentrales Theorem: Ein CLU, in dem jede Fabrik regul�r ist, hat ein exaktes Potential

Theorem: Eine (autonome) Fabrik ist regul�r <=> jede Erweiterung des Spiels mit der Fabrik hat exaktes Potential (sowohl f�r CLUs als auch f�r Auslastungsspiele)

Weiter werden einige hinreichende Bedingungen f�r die Existenz von Nashgleichgewichten gezeigt (folgen f�r unendliche Strategier�ume nicht direkt aus der Existenz einer Potentialfunktion!)

Erweiterung von CLU mit (bestimmten) Spielerspezifischen Kostenfunktionen -> es existiert immer eine isomorphes regul�res CLU, hat also immer exaktes Potential -> Daraus folgt also die eine H�lfte des Satzes aus TOCS-HKM-2011



--------------------------------------------------------------------------------------------------------------------------------
## Characterizing the Existence of Potential Functions in Weighted Congestion Games ##
	by Tobias Harks, Max Klimm, Rolf H. M�hring | DOI 10.1007/s00224-011-9315-x | TOCS-HKM-2011.pdf
	
Zentrales Theorem1: Geg. eine Menge von lokal beschr�nkten Funktionen C. Dann besitzt jedes mit Funktionen daraus konstruierte gewichtete Auslastungsspiel ein exaktes Potential <=> C enth�lt nur affin lineare Funktionen

Zentrales Theorem2: Geg. eine Menge von stetigen Funktionen C. Dann besitzt jedes mit Funktionen daraus konstruierte gewichtete Auslastungsspiel ein w-Potential <=> C enth�lt nur affin lineare Funktionen oder C enth�lt nur Exponentialfunktionen mit gemeinsamer Basis
	
+ Erweiterungen f�r Spiele mit fabrikabh�ngigen Bedarfen oder elastischen Bedarfen	

	
	
--------------------------------------------------------------------------------------------------------------------------------
## On the Existence of Pure Nash Equilibria in Weighted Congestion Games ##
	by Tobias Harks, Max Klimm | http://dx.doi.org/10.1287/moor.1120.0543 | HK-MOR-2012.pdf
	
Im Wesentlichen TOCS-HKM-2011 mit Nash-Gleichgewichten statt exakten Potentialfunktionen?

Zentrales Theorem: Geg. Menge stetiger Funktionen C. Das gilt:
	Alle gew. Ausl.spiele mit Kostenfkt.en aus C haben NG <=> Alle gew. Ausl.spiele mit Kostenfkt.en aus C haben FIP <=> C enth�lt nur affin lineare Funktionen oder C enth�lt nur Exponentialfunktionen mit gemeinsamer Basis
	
Weiteres Theorem: F�r 2-Personenspiele sind mehr Funktionen erlaubt (monoton mit paarweise affin-linearer Beziehung) und Kostenfunktionen d�rfen Linearkombinationen aus aus zwei solchen Funktionen sein.
	
+ Spezialisierungen f�r gew. Netzwerkspiele und gew. Singelton Auslastungsspiele


--------------------------------------------------------------------------------------------------------------------------------
## Potential Games ##
	by Dov Monderer, Lloyd S. Shapley | Monderer-Shapley-1996.pdf

Lemma (2.5): Ein Spiel hat FIP <=> Spiel hat verallg. oridinales Potential

...


--------------------------------------------------------------------------------------------------------------------------------
## Tight Bounds for Cost-Sharing in Weighted Congestion Games ##

???


--------------------------------------------------------------------------------------------------------------------------------
## On Some Categories of Games and Corresponding Equilibria ##
	by Victor Lapitsky
	
Definiert _Spiele in einer Kategorie C_ als Klasse <I, (S_i)_{i\in I}, (K_i)_{i\in I}, (\phi_i)_{i\in I}>, wobei
	- I \in Ob SET: Menge der Spieler
	- S_i \in Ob C: Strategisches Objekt von Spieler i
	- K_i \in Ob C: Payoff Objekt von Spieler i
	- \phi_i: \Prod_{i\in I} S_i -> K_i \in Mor C: Payoff-Morphismus von Spieler i
Ein Morphismus zwischen solchen Spielen (mit gleicher Spielermenge I!) besteht nun aus Morphismen (in C) S_i -> S'_i und K_i -> K'_i die zusammen mit den \phi_i kommutative Diagramme induzieren. Ein Morphismus zwischen Spielen "kommutiert" also mit den Payoffs.

"Gew�hnliche" Spiele erh�lt man f�r C = SET. Man kann auch aus abstrakten Spielen ein solches durch einen Punktefunktor und ein festes Objekt A erhalten (-> Yoneda-Lemma?). W�hlt man f�r A das terminale Objekt der Kategorie C, so erh�lt man Spiele mit reinen Strategien (Hom(T,S_i)).

Definiert _topologische Spiele_ als topologischen Raum (Spielermenge) mit zwei Garben darauf (Strategieraum und Payoffraum). W�hlt man als topologischen Raum einen diskreten Raum, so erh�lt man die vorherige Definition eines (nicht-kooperativen) Spiels zur�ck. Mit Hilfe der Garbendefinition erh�lt man dann auch Morphismen zwischen Spielen mit unterschiedlich vielen Spielern (beachte, dass die Abbildung auf den topologischen R�umen in die andere Richtung geht als die auf den Garben!).

Lemma (4.1): Sind die Abbildungen auf den Strategieraum-Garben surjektiv, so erh�lt die Abbildung Gleichgewichtspunkte. Ist die Spielerabbildung surjektiv und die Payoff-Garben-Abbildungen injektiv, so ist das Urbild eines schwachen Gleichgewichtes ein schwaches Gleichgewicht.

Weiter wird dann der Begriff von Gleichgewichten und (nicht-strategischen) Spielen verallgemeinert.


--------------------------------------------------------------------------------------------------------------------------------
## Multipotential Games ##
	by Dov Monderer | Multipotential Games.pdf
	
q-Potentialspiel: Ein Spiel, das sich durch q verschiedene Potentiale �berdecken l�sst. D.h. f�r jeden Spieler ist mindestens eines der q Potentiale ein (spielerspezifisches Potential).
	-> offensichtlich ist ein n-Personen-Spiel ein n-Potentialspiel

q-Auslastungsspiel: Auslastungsspiel mit spielerspezifischen Kostenfunktionen. Genauer gesagt gibt es zu jeder Resource einen q-dim-Vektor von Kostenfunktionen, sodass f�r Spieler i immer der j_i-te Eintrag die entsprechende spielerspezifische Kostenfunktion ist.

Zentrales Theorem: Jedes q-Auslastungsspiel hat ein q-Potential und jedes endliche q-Potentialspiel ist isomorph zu einem q-Auslastungsspiel.
	-> Beweis analog zum Theorem von Shapley und Monderer
	
Enth�lt ein Beispiel f�r ein exaktes Potentialspiel, welches nicht durch ein q-Auslasungsspiel mit ausschlie�lich nicht-negativen, monoton wachsenden Kostenfunktionen repres�ntiert werden kann.

Enth�lt etwas sch�neren Beweis f�r Konstruktion eines Auslastungsspiels zu gegebenem Potentialspiel.

Weiteres Theorem: Jedes q-Auslastungsspiel ist isomorph zu einem q-Netzwerkspiel (mit gleichem Start/Endpunkt f�r alle Spieler, aber unterschiedlichen zul�ssigen Routen)
	
Laut Fu�note 10 haben Monderer und Shapley in ihrem Paper bereits eine Variante eines weighted congestion games definiert. Im entsprechenden Paper kann ich aber nichts davon finden...


--------------------------------------------------------------------------------------------------------------------------------
## Algorithms for Pure Nash Equilibria in Weighted Congestion Games ##
	by PANAGIOTA N. PANAGOPOULOU and PAUL G. SPIRAKIS | Algorithms for pure Nash equilibria in weighted congestion games.pdf
	
Relevantes Theorem (5.1): Jedes gewichtete Netzwerkauslastungsspiel mit exponentiellen Kostenfunktionen ist w-Potentialspiel.
	M�sste eigentlich mit gleichem Beweis f�r allgemeine gew. Auslastungsspiele mit exp. Kostenfunktionen gelten.
	Gewicht der Potentialfkt. ist exp(w_i)/(exp(w_i)-1), Potentialfkt. ist \sum r\in R c(x)

+ experimentelle Analyse des Nashify-Alg. (Bestresponse-Alg.) zum Finden von Nashgleichgewichten. Vermutung: Polynomialzeit.
