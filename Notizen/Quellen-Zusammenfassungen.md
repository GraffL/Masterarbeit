--------------------------------------------------------------------------------------------------------------------------------
## A universal construction generating potential games ##
	by Nikolai S. Kukushkin | ACLU.pdf
	
beschreibt Games with (additive) Common Local Utilities (CLU): Erweiterung des Konzeptes ungewichteter Auslastungsspiele - Kosten pro Fabrik hängen nun von der Menge der diese wählenden Spieler und deren gewählten Strategien ab (aus der gewählten Strategie ergeben sich die gewählten Fabriken, aber nicht notwendigerweise umgekehrt). Außerdem darf der Strategieraum und die Menge der Fabriken unendlich groß sein.

Eine Fabrik heißt regulär, wenn sie folgende zwei Bedingungen erfüllt:
* Haben nicht alle Spieler eine bestimmte Fabrik gewählt, so ändern sich deren Kosten nicht, wenn ein einzelner der sie wählenden Spieler eine andere Strategie auswählt (die aber immer noch diese Fabrik auswählt).
* Das Austauschen eines die Fabrik wählenden Spielers durch einen anderen ändert die Kosten nicht.

Prop: Ist eine Fabrik regulär, so hängen ihre Kosten nur von der Zahl der sie wählenden Spieler ab (nicht von deren Identität oder genauen Strategie), es sei denn alle Spieler wählen die Fabrik.

Beob: Auslastungsspiele sind reguär

Zentrales Theorem: Ein CLU, in dem jede Fabrik regulär ist, hat ein exaktes Potential

Theorem: Eine (autonome) Fabrik ist regulär <=> jede Erweiterung des Spiels mit der Fabrik hat exaktes Potential (sowohl für CLUs als auch für Auslastungsspiele)

Weiter werden einige hinreichende Bedingungen für die Existenz von Nashgleichgewichten gezeigt (folgen für unendliche Strategieräume nicht direkt aus der Existenz einer Potentialfunktion!)

Erweiterung von CLU mit (bestimmten) Spielerspezifischen Kostenfunktionen -> es existiert immer eine isomorphes reguläres CLU, hat also immer exaktes Potential -> Daraus folgt also die eine Hälfte des Satzes aus TOCS-HKM-2011



--------------------------------------------------------------------------------------------------------------------------------
## Characterizing the Existence of Potential Functions in Weighted Congestion Games ##
	by Tobias Harks, Max Klimm, Rolf H. Möhring | DOI 10.1007/s00224-011-9315-x | TOCS-HKM-2011.pdf
	
Zentrales Theorem1: Geg. eine Menge von lokal beschränkten Funktionen C. Dann besitzt jedes mit Funktionen daraus konstruierte gewichtete Auslastungsspiel ein exaktes Potential <=> C enthält nur affin lineare Funktionen

Zentrales Theorem2: Geg. eine Menge von stetigen Funktionen C. Dann besitzt jedes mit Funktionen daraus konstruierte gewichtete Auslastungsspiel ein w-Potential <=> C enthält nur affin lineare Funktionen oder C enthält nur Exponentialfunktionen mit gemeinsamer Basis
	
+ Erweiterungen für Spiele mit fabrikabhängigen Bedarfen oder elastischen Bedarfen	

	
	
--------------------------------------------------------------------------------------------------------------------------------
## On the Existence of Pure Nash Equilibria in Weighted Congestion Games ##
	by Tobias Harks, Max Klimm | http://dx.doi.org/10.1287/moor.1120.0543 | HK-MOR-2012.pdf
	
Im Wesentlichen TOCS-HKM-2011 mit Nash-Gleichgewichten statt exakten Potentialfunktionen?

Zentrales Theorem: Geg. Menge stetiger Funktionen C. Das gilt:
	Alle gew. Ausl.spiele mit Kostenfkt.en aus C haben NG <=> Alle gew. Ausl.spiele mit Kostenfkt.en aus C haben FIP <=> C enthält nur affin lineare Funktionen oder C enthält nur Exponentialfunktionen mit gemeinsamer Basis
	
Weiteres Theorem: Für 2-Personenspiele sind mehr Funktionen erlaubt (monoton mit paarweise affin-linearer Beziehung) und Kostenfunktionen dürfen Linearkombinationen aus aus zwei solchen Funktionen sein.
	
+ Spezialisierungen für gew. Netzwerkspiele und gew. Singelton Auslastungsspiele


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

"Gewöhnliche" Spiele erhält man für C = SET. Man kann auch aus abstrakten Spielen ein solches durch einen Punktefunktor und ein festes Objekt A erhalten (-> Yoneda-Lemma?). Wählt man für A das terminale Objekt der Kategorie C, so erhält man Spiele mit reinen Strategien (Hom(T,S_i)).

Definiert _topologische Spiele_ als topologischen Raum (Spielermenge) mit zwei Garben darauf (Strategieraum und Payoffraum). Wählt man als topologischen Raum einen diskreten Raum, so erhält man die vorherige Definition eines (nicht-kooperativen) Spiels zurück. Mit Hilfe der Garbendefinition erhält man dann auch Morphismen zwischen Spielen mit unterschiedlich vielen Spielern (beachte, dass die Abbildung auf den topologischen Räumen in die andere Richtung geht als die auf den Garben!).

Lemma (4.1): Sind die Abbildungen auf den Strategieraum-Garben surjektiv, so erhält die Abbildung Gleichgewichtspunkte. Ist die Spielerabbildung surjektiv und die Payoff-Garben-Abbildungen injektiv, so ist das Urbild eines schwachen Gleichgewichtes ein schwaches Gleichgewicht.

Weiter wird dann der Begriff von Gleichgewichten und (nicht-strategischen) Spielen verallgemeinert.


--------------------------------------------------------------------------------------------------------------------------------
## Multipotential Games ##
	by Dov Monderer | Multipotential Games.pdf
	
q-Potentialspiel: Ein Spiel, das sich durch q verschiedene Potentiale überdecken lässt. D.h. für jeden Spieler ist mindestens eines der q Potentiale ein (spielerspezifisches Potential).
	-> offensichtlich ist ein n-Personen-Spiel ein n-Potentialspiel

q-Auslastungsspiel: Auslastungsspiel mit spielerspezifischen Kostenfunktionen. Genauer gesagt gibt es zu jeder Resource einen q-dim-Vektor von Kostenfunktionen, sodass für Spieler i immer der j_i-te Eintrag die entsprechende spielerspezifische Kostenfunktion ist.

Zentrales Theorem: Jedes q-Auslastungsspiel hat ein q-Potential und jedes endliche q-Potentialspiel ist isomorph zu einem q-Auslastungsspiel.
	-> Beweis analog zum Theorem von Shapley und Monderer
	
Enthält ein Beispiel für ein exaktes Potentialspiel, welches nicht durch ein q-Auslasungsspiel mit ausschließlich nicht-negativen, monoton wachsenden Kostenfunktionen represäntiert werden kann.

Enthält etwas schöneren Beweis für Konstruktion eines Auslastungsspiels zu gegebenem Potentialspiel.

Weiteres Theorem: Jedes q-Auslastungsspiel ist isomorph zu einem q-Netzwerkspiel (mit gleichem Start/Endpunkt für alle Spieler, aber unterschiedlichen zulässigen Routen)
	
Laut Fußnote 10 haben Monderer und Shapley in ihrem Paper bereits eine Variante eines weighted congestion games definiert. Im entsprechenden Paper kann ich aber nichts davon finden...


--------------------------------------------------------------------------------------------------------------------------------
## Algorithms for Pure Nash Equilibria in Weighted Congestion Games ##
	by PANAGIOTA N. PANAGOPOULOU and PAUL G. SPIRAKIS | Algorithms for pure Nash equilibria in weighted congestion games.pdf
	
Relevantes Theorem (5.1): Jedes gewichtete Netzwerkauslastungsspiel mit exponentiellen Kostenfunktionen ist w-Potentialspiel.
	Müsste eigentlich mit gleichem Beweis für allgemeine gew. Auslastungsspiele mit exp. Kostenfunktionen gelten.
	Gewicht der Potentialfkt. ist exp(w_i)/(exp(w_i)-1), Potentialfkt. ist \sum r\in R c(x)

+ experimentelle Analyse des Nashify-Alg. (Bestresponse-Alg.) zum Finden von Nashgleichgewichten. Vermutung: Polynomialzeit.
