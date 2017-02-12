# Potentialspiele #

--------------------------------------------------------------------------------------------------------------------------------
## Potential Games ##
	by Dov Monderer, Lloyd S. Shapley | Monderer-Shapley-1996.pdf

Lemma (2.5): Ein Spiel hat FIP <=> Spiel hat verallg. oridinales Potential  
Beweis über Relation > auf dem Strategieraum, mit x > y <=> es gibt einen (endlichen) Verbesserungspfad von x nach y. Eine Teilmenge von Y heißt dann "repräsentiert" <=> es gibt ein Ordinales Potential für diese. Dann nimmt man eine maximale solche Teilmenge und führt die Annahme, diese wäre nicht ganz Y, zu einem Widerspruch (mit drei Fällen). Ein konstruktiver (und eleganterer) Beweis wird zitiert - das müsste der gleiche wie im Opti IV-Skript sein.  
Beachte: Der erste Beweis könnte evtl. auch für unendliche Strategieräume funktionieren, der zweite sicher nicht.

...


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
## A Characterization of Ordinal Potential Games ##
	by Mark Voorneveld and Henk Norde | A Characterization of Ordinal Potential Games.pdf
	
Ein _schwacher Verbesserungskreis_ ist ein Kreis, der sich nie verschlechtert und mindestens einmal echt verbessert (jeweils aus Sicht des abweichenden Spielers).

Definiere eine Relation <= auf dem Strategieraum durch x <= y <=> Es gibt einen sich nirgends verschlechternden Pfad von x nach y. Die sich daraus ergebende Gleichheitsrelation ist eine Äquivalenzrelation und induziert einen Raum von Äquivalenzklassen [X] auf X. Auf diesem wiederum definiert man eine Relation < durch [x] < [y] <=> [x] != [y] UND x <= y.

Eine Menge mit einer Partialordnung heißt "properly ordered", wenn es eine streng monotone Abbildung von ihr in die reellen Zahlen gibt. (Beob: jede abzählbare Partialordnung ist "properly ordered")

Zentrales Theorem (3.1): Ein Spiel hat ein ordinales Potential <=> es keine schwachen Verbesserungskreise enthält UND ([X], <) properly ordered ist.  
Im Beweis von "<=" erhält man die Potentialfunktion durch die streng monotone Funktion, welche "properly ordered" belegt.

Das Paper enthält jeweils Beispiele für die Notwendigkeit der verschiedenen Voraussetungen!


--------------------------------------------------------------------------------------------------------------------------------
## Best-response potential games ##
	by Mark Voorneveld | Best-response potential games.pdf
	
Ein _Beste-Antwort-Potential_ ist eine Funktion P: X -> |R, sodass gilt:
	\forall i \in N, x_{-i} \in X_{-i}: argmax_{x_i \in X_i} u_i(x) = argmax_{x_i \in X_i} P(x)
Das heißt das Potential zeigt jeweils die beste(n) Antwort(en) an.

Prop: Ersetzt man die Kostenfunktionen durch ein Beste-Antwort-Potential, so bleiben die Nashgleichgewichte genau erhalten.

Ein Pfad heißt _beste-Antwort-kompatibel_ <=> der abweichende Spieler wechselt jeweils zu einer besten Antwort.

Zentrales Theorem (3.1): Ein Spiel hat ein Beste-Antwort-Potential <=> es keine beste-Antwort-kompatiblen Kreise enthält UND ([X], <) properly ordered ist.  
Beweis scheint sehr analog zu dem entsprechenden für ordinale Potentiale in "A Characterization of Ordinal Potential Games" zu sein.

Ordinalspiele sind (echt) im Schnitt von verallgemeinerten Ordinalspielen und Beste-Antwort-Potentialspielen enthalten. Für letztere ist keines im anderen enthalten. Das Paper enthält entsprechende Beispiele.


================================================================================================================================
# Auslastungsspiele #

--------------------------------------------------------------------------------------------------------------------------------
## A Class of Games Possessing Pure-Strategy Nash Equilibria ##
	by Robert W. Rosenthal | A Class of Games Possessing Pure-Strategy Nash Equilibria.pdf
	
Erste Definition von Auslastungsspielen.

Zentrales Theorem: Alle Auslastungsspiele besitzen ein Nash-Gleichgewicht (über Rosenthalpotentialfunktion - wird allerdings noch nicht als Potentialfunktion bezeichnet).
	

--------------------------------------------------------------------------------------------------------------------------------
## Congestion Games and Potentials Reconsidered ##
	by Mark Voorneveld, Peter Borm, Freek van Megen, Stef Tijs and Giovanni Facchini | Congestion Games and Potentials Reconsidered.pdf
	
Definition von _Koordinations- und Dummy-Spielen_. Beweis für Auslastungsspiel <=> exaktes Potentialspiel über Zerlegung von Potentialspielen in ein Koordinations- und ein Dummyspiel.

Eine Strategie heißt _starkes Nashgleichgewicht_ <=> für jede abweichende Koalition gibt es wenigstens einen Spieler, der sich nicht verbessert.

Verschiedene (leicht andere) Definitionen von Auslastungsspielen werden diskutiert und wann diese exakte Potentiale haben bzw. (starke) Nashgleichgewichte.

Für eine gewisse Klasse an Auslastungsspielen (die gewisse Axiome erfüllen) wird gezeigt, dass Nashgleichgewichte, starke Nashgleichgewichte und Potentialmaximierer zusammenfallen (Theorem 6.1).


--------------------------------------------------------------------------------------------------------------------------------
## Characterizing the Existence of Potential Functions in Weighted Congestion Games ##
	by Tobias Harks, Max Klimm, Rolf H. Möhring | DOI 10.1007/s00224-011-9315-x | TOCS-HKM-2011.pdf
	
Zentrales Theorem1: Geg. eine Menge von lokal beschränkten Funktionen C. Dann besitzt jedes mit Funktionen daraus konstruierte gewichtete Auslastungsspiel ein exaktes Potential <=> C enthält nur affin lineare Funktionen

Zentrales Theorem2: Geg. eine Menge von stetigen Funktionen C. Dann besitzt jedes mit Funktionen daraus konstruierte gewichtete Auslastungsspiel ein w-Potential <=> C enthält nur affin lineare Funktionen oder C enthält nur Exponentialfunktionen mit gemeinsamer Basis
	
+ Erweiterungen für Spiele mit fabrikabhängigen Bedarfen oder elastischen Bedarfen	

	
	
--------------------------------------------------------------------------------------------------------------------------------
## On the Existence of Pure Nash Equilibria in Weighted Congestion Games ##
	by Tobias Harks, Max Klimm | http://dx.doi.org/10.1287/moor.1120.0543 | HK-MOR-2012.pdf
	
"TOCS-HKM-2011 mit Nash-Gleichgewichten statt exakten Potentialfunktionen" - benötigt aber andere Techniken

Zentrales Theorem: Geg. Menge stetiger Funktionen C. Dann gilt:  
	Alle gew. Ausl.spiele mit Kostenfkt.en aus C haben NG <=> Alle gew. Ausl.spiele mit Kostenfkt.en aus C haben FIP <=> C enthält nur affin lineare Funktionen oder C enthält nur Exponentialfunktionen mit gemeinsamer Basis
	
Weiteres Theorem: Für 2-Personenspiele sind mehr Funktionen erlaubt (monoton mit paarweise affin-linearer Beziehung) und Kostenfunktionen dürfen Linearkombinationen aus aus zwei solchen Funktionen sein.
	
+ Spezialisierungen für gew. Netzwerkspiele und gew. Singelton Auslastungsspiele


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

Erweiterung von CLU mit (bestimmten) Spielerspezifischen Kostenfunktionen -> es existiert immer eine isomorphes reguläres CLU, hat also immer exaktes Potential -> Daraus folgt also die eine Hälfte des Satzes mit affinen Kostenfunktionen aus TOCS-HKM-2011


--------------------------------------------------------------------------------------------------------------------------------
## Algorithms for Pure Nash Equilibria in Weighted Congestion Games ##
	by Panagiota N. Panagopoulou and Paul G. Spirakis | Algorithms for pure Nash equilibria in weighted congestion games.pdf
	
Relevantes Theorem (5.1): Jedes gewichtete Netzwerkauslastungsspiel mit exponentiellen Kostenfunktionen ist w-Potentialspiel.  
Müsste eigentlich mit gleichem Beweis für allgemeine gew. Auslastungsspiele mit exp. Kostenfunktionen gelten.  
Gewicht der Potentialfkt. ist exp(w_i)/(exp(w_i)-1), Potentialfkt. ist \sum r\in R c(x)  

+ experimentelle Analyse des Nashify-Alg. (Bestresponse-Alg.) zum Finden von Nashgleichgewichten. Vermutung: Polynomialzeit.


--------------------------------------------------------------------------------------------------------------------------------
## Congestion Games with Player-Specific Payoff Functions ##
	by Igal Milchtaich

Definiert Auslastungsspiele mit spielerspezifischem Nutzen. Dabei wählen Spieler genau eine Fabrik und der Nutzen sinkt monoton mit der Anzahl der Spieler, die die jeweilige Fabrik gewählt haben.

Enthält einen konstruktiven Beweis für: Hat FIP => hat ordinales Potential

Theorem: Jedes solche Spiel besitzt ein Nash-Gleichgewicht.  
Beweis läuft durch Induktion über die Zahl der Spieler.


--------------------------------------------------------------------------------------------------------------------------------
## Weighted Congestion Games With Separable Preferences ##
	by Igal Milchtaich | Weighted Congestion Games With Separable Preferences.pdf
	
Ein _seperable Auslastungsspiel mit seperablen Präferenzen_ ist eine Variante eines gewichteten Auslastungsspiels, in dem die Strategien Singeltons sind und die Kosten für Spieler i bei Wahl von Resource r ist gegeben durch a_r^i * c(\sum_{j, die r wählen} w_r^j) oder c(\sum_{j, die r wählen} w_r^j) + b_r^i, wobei c monoton wachsend ist und w_r^j das Gewicht von Spieler j bei Wahl von Resource r.

Prop: In obigem Modell spielerspezifische Funktionen c zuzulassen erweitert die Klasse der Spiele nicht, da dies durch "ausreichend verschiedene" Gewichte mit einer gemeinsamen GEwichtsfunktion simuliert werden kann (hier gezeigt für endliche Spiele - sollte mMn aber zumindest auch für abzählbare funktionieren)

Theorem 1: Sind die Kosten (pro Resource) für alle Spieler gleich (a_r^i = a_r^j bzw. b_r^i = b_r^j), so besitzt das Spiel die FIP

Theorem 2: Sind die Gewichte (pro Resource) für alle Spieler gleich, so besitzt das Spiel die FIP.   
	Beweis über eine Verallgemeinerung des Rosenthalpotentials.
	
Theorem 3: Sind die Gewichte (pro Spieler) für alle Resourcen gleich, so ist ein Nash-Gleichgewicht bei bis zu 3 Spielern garantiert. Für 8 Spieler gibt es ein Beispiel, in dem kein NG existiert.

Theorem 4: Sind die Gewichte (pro Spieler) für alle Resourcen gleich und die Kostenfunktionen linear, so hat das Spiel die FIP.



================================================================================================================================
# Morphismen #

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


================================================================================================================================
# Unsortiertes #

--------------------------------------------------------------------------------------------------------------------------------
## Tight Bounds for Cost-Sharing in Weighted Congestion Games ##

???
