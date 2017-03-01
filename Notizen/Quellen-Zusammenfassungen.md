<h1>Quellen-Zusammenfassung</h1>

# Potentialspiele #

--------------------------------------------------------------------------------------------------------------------------------
## Potential Games ##
	by Dov Monderer, Lloyd S. Shapley | Monderer-Shapley-1996.pdf

Lemma (2.5): Ein Spiel hat FIP <=> Spiel hat verallg. oridinales Potential  
Beweis über Relation > auf dem Strategieraum, mit x > y <=> es gibt einen (endlichen) Verbesserungspfad von x nach y und x != y. Aus der FIP folgert, dass diese transitiv ist, denn die einzige Stelle, an der dies scheitern könnte, ist ein Auftreten von x > y und y > x (denn daraus kann nicht x > x folgern). Und dieser Fall kann nicht eintreten, da er einen Verbesserungskreis verursachen würde. Eine Teilmenge von Y heißt dann "repräsentiert" <=> es gibt ein Ordinales Potential für diese. Dann nimmt man eine maximale solche Teilmenge und führt die Annahme, diese wäre nicht ganz Y, zu einem Widerspruch (mit drei Fällen). Ein konstruktiver (und eleganterer) Beweis wird zitiert - das müsste der gleiche wie im Opti IV-Skript sein.  
Beachte: Die Hinrichtung des ersten Beweises kann wohl einfach für unendliche Strategieräume übernommen werden (ersetze max durch sup, min durch inf, "Funktion Q" durch "beschränkte Funktion Q"), die des zweiten zumindest noch für abzähbare Strategieräume (weise jedem Strategieprofil eine Zahl der Form 1/3^k zu und verwende dann als Potentialfunktion das Negative der Summe über die Werte an allen Strategieprofilen, von denen aus dieses Strategieprofil über einen Verbesserungspfad erreichbar ist). Die Rückrichtung hingegen gilt für unendliche Strategieräume i.A. nicht!

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
	by Igal Milchtaich | Congestion Games with Player-Specific Payoff Functions.pdf

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


--------------------------------------------------------------------------------------------------------------------------------
## Representation of Finite Games as Network Congestion Games ##
	by Igal Milchtaich | Representation of Finite Games as Network Congestion Games.pdf (s. auch Vortrag: https://www.youtube.com/watch?v=QxjJyL-t9TE )

Ein _Homomorphismus_ zwischen zwei Spielen ist gegeben durch eine Umnummerierung der Spieler und ein kostenerhaltende (aber nicht notwendigerweise surjektive oder injektive) Abbildungen zwischen den Strategieräumen

Zwei Spiele mit gleichen Spieler- und Strategiemengen heißen _ähnlich_ <=> die Kostendifferenzen für einen abweichenden Spieler sind jeweils in beiden Spielen gleich.  
	-> Ein Spiel hat ein exaktes Potential <=> es ist ähnlich zu einem Spiel mit gemeinsamer Kostenfunktion für alle Spieler
	

Ein _gewichtetes Netzwerkauslastungsspiel_ ist gegeben durch einen gerichteten Graphen mit Quelle und Senke, monotonen Kostenfunktionen auf allen Kanten und zu jeder Kante eine Menge an Spielern, die diese benutzen dürfen. Alle Quelle-Senke-Pfade die nur Kanten benutzen, welche für Spieler i erlaubt sind, bilden zusammen den Strategieraum dieses Spielers. Zusätzlich hat jeder Spieler ein Gewicht w_i > 0. Die Kosten für einen Spieler ergeben sich dann als Summe der Kosten die (durch alle Spieler) auf allen von diesem Spieler benutzten Kanten entstehen.  
Sind alle Gewichte 1, so heißt das Spiel _ungewichtetes Netzwerkauslastungsspiel_. Ein solches wird zu einem _(ungewichteten) Netzwerkauslastungsspiel mit spielerspezifischen Kosten_, wenn die Kantenkosten spielerspezifisch sind.

Theorem: Jedes endliche Spiel kann als gewichtetes Netzwerkauslastungsspiel repräsentiert werden.  
         Jedes endliche Spiel kann als Netzwerkauslastungsspiel mit spielerspezifischen Kosten repräsentiert werden.  
		 Ein endliches Spiel kann als ungewichtetes Netzwerkauslastungsspiel repräsentiert werden <=> es besitzt ein exaktes Potential
		 
Die Endlichkeit des Spiels scheint relativ zentral in den Beweis einzugehen (eine entsprechende Zahl erscheint als Nenner eines Bruchs - ist es schlimm, wenn dieser Bruch 0 wird?)

		 
Die _sequentielle Zug-Version_ (_sequential-move version_) eines Spiels ist ein perfekte Informationsspiel, in dem die Spieler die Strategien aus dem ursprünglichen Spiel nacheinander wählen. 

Ein Spiel heißt _sequentiell lösbar_ <=> für jede Anordnung der Spieler gibt es ein perfektes Teilspielgleichgewicht ...
	
Gewichtete Singelton-Netzwerkauslastungsspiele haben kein exaktes Potential, aber FIP (also ordinales Potential)

Singelton-Netzwerkauslastungsspiele mit spielerspezifischen Kosten haben nicht FIP, aber immer Nash-Gleichgewichte und sind sequentiell-lösbar.


================================================================================================================================
# Morphismen/Isomorphismen/Äquivalenzen #

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
## Best Responce Equivalence ##
	by Stephen Morris, Takashi Ui | Best responce equivalence.pdf

Drei weitere Äquivalenzbegriffe von (Auszahlungs-!)Spielen auf gemeinsamem Strategieraum:

Zu Spieler i, Strategie x_i \in X_i, Strategiemenge A_i \subseteq X_i und Kostenfunktion c_i ist  
L_i(x_i, A_i | c_i) := {l_i Wktvtlg auf X_{-i} | F.a. y_i \in X_i: \sum_{x_{-i} \in X_{-i} l_i(x_{-i})*(c_i(x)-c_i(y_i, x_{-i})) \geq 0}  
die Menge aller gemischten Gegenstrategien, für die Spieler i x_i gegenüber allen Strategien aus A_i bevorzugt.

Dann heißen zwei Spiele (mit Kostenfunktionen c_i bzw. c'_i)
* _von Neumann (VNM)-äquivalent_ <=> \exists w_i>0, Q_i:X_{-i} -> IR: \forall x_i: c_i(x_i, _) = w_i*c'_i(x_i,_) + Q_i(_)
* _bessere Antwort-äquivalent_ <=> \forall i, x_i, y_i: L_i(x_i,y_i | c_i) = L_i(x_i, y_i | c'_i)
* _beste Antwort-äquivalent_ <=> \forall i, x_i: L_i(x_i, X_i | c_i) = L_i(x_i, X_i | c'_i)  
Die Definitionen werden von oben nach unten schwächer, d.h. aus VNM-äq folgt bessere Antwort-äq. und daraus beste Antwort-äq.

Lemma: Zwei Spiele sind VNM-äq <=> \w_i: c_i(x_i, _) - c_i(y_i, _) = w_i (c'_i(x_i, _) - c'_i(y_i, _))

Beob: VNM-Äq. führt zur Definition von gew. Potentialen: Alle Spiele mit w-Potential P, gehören zur selben VNM-Äq.-klasse wie das Spiel mit (einheitlicher) Kostenfunktion P.  
Analog dazu erhält man die Begriffe "bessere Antwort-Potential" und "beste Antwort-Potential" (der entsprechende Begriff in "Best-response potential games" ist anscheinend allgemeiner (da dort nur degenerierte Wkts-vtlgen erlaubt sind?)).

Unter der Annahme verschiedener generischer Eigenschaften werden Charakterisierungen der verschiedenen Äquivalenzen gezeigt.

Schließlich werden entsprechende Begriffe für gemischte Strategien definiert.


--------------------------------------------------------------------------------------------------------------------------------
## Fictitious Play Property for Games with Identical Interests ##
	by Dov Monderer | Fictitious Play Property for Games with Identical Interests.pdf
	
Erwähnt den Begriff Beste Antwort-Äquivalent (best response equivalent): Zwei Spiele mit gleichem Strategieraum, aber verschiedenen Kostenfunktionen sind _beste Antwort-äquivalent_ <=> Für jedes Strategieprofil x und jeden Spieler i wird die beste Antwort für Spieler i auf x an der gleichen Stelle (den gleichen Stellen?) angenommen.  
(wird hier nur für gemischte Strategien definiert und verwendet - sollte aber genauso für reine Strategien gehen)


--------------------------------------------------------------------------------------------------------------------------------
## Polyequilibrium ##
	by Igal Milchtaich | polyequilibrium.pdf
	
Polyequilibria verallgemeinern die Ideen von Nash-Gleichgewichten.

Interessante Notation: Für Strategieprofil x und Strategie y_i bezeichnet x | y_i das Strategieprofil, welches man aus x durch Ersetzen von x_i durch y_i erhält.

Seien x_i und y_i zwei Strategien von i, sowie S eine Menge von Strategieprofilen. 
* Dann ist x_i _eine mindestens so gute Antwort auf S_ wie y_i <=> F.a. x \in S: c(x | x_i) ≤ c(x | y_i).  
* Ist mindestens eine der Ungleichungen strikt, so _dominiert x_i schwach y_i relativ zu S_. Sind alle Ungleichungen strikt, so _dominiert x_i strikt y_i relativ zu S_.  
* x_i ist eine _beste Antwort_ auf S, wenn es für jede Strategie von i eine mindestens so gute Antwort auf die Strategien aus S ist.

Ein Strategieprofil x ist _eine mindestens so gute Antwort auf S_ wie ein anderes Strategieprofil y <=> für jeden Spieler i ist x_i eine mindestens so gute Antwort auf S wie y_i.

Eine _Polystrategie_ von Spieler i ist eine (nicht-leere) Teilmenge seines Strategieraums.

Ein _Teilspiel_ ist gegeben durch eine Polystrategieprofil (d.h. je eine Polystrategie für jeden Spieler).

Eine Polystrategieprofil Y ist 
* ein _Polyequilibrium_ <=> für jedes nicht darin enthaltene Strategieprofil gibt es ein darin enthaltenes Strategieprofil, das eine mindestens so gute Antwort auf Y ist.
* ein _striktes Polyequilibrium_ <=> für jeden Spieler i und jede Strategie x_i \notin Y_i gibt es ein y_i \in Y_i, welches x_i relativ zu Y strikt dominiert.
* ein _einfaches Polyequilibrium_ <=> es enthält ein Strategieprofil, welches eine beste Antwort auf Y ist.

Beob: Singelton-Polyequilibria entsprechend Nash-Gleichgewichten (ebenso für die strikten Varianten).


Eine _Strategieersetzungsvorschrift_ für Spieler i ist gegeben durch eine (beliebige!) Funktion f_i: X_i -> X_i. Eine _Strategieersetzungsvorschrift_ (für alle Spieler) ist eine Familie solche Funktionen für alle Spieler.  
Eine solche Strategieersetzungsvorschrift heißt _rational_ <=> f.a. Spieler i und Strategieprofile x gilt: c_i(f(x)) ≤ c_i(f(x) | x_i). D.h. folgen alle anderen Spieler der Ersetzungsvorschrift, so ist dies auch für Spieler i sinnvoll.

Beob: Ein Polystrategieprofil Y ist ein Polyequilibrium <=> Es ist Bild einer rationalen Strategieersetzungsvorschrift X -> X. (diese liefert also sozusagen jeweils die Begründung für das Weglassen einer bestimmten Strategie).

Prop 1: Jedes Polyequilibrium enthält den Support eines gemischten Nash-Gleichgewichtes.


Des Weiteren beschreibt das Paper Zusammenhänge zu Polyequilibria in gemischten Erweiterungen und beschäftigt sich dann mit sogenannten Dynamischen Spielen (=Spiele in extensive Form?).


--------------------------------------------------------------------------------------------------------------------------------
## Non-Cooperative Games ##
	by John Nash | Non-cooperative Games (Nash).pdf

Enthält bereits das Konzept eines _Automorphismuses_ (bzw. einer _Symmetrie_) eines Spiels: Eine Permutation der Spielermenge und eine Familie (dazu passender) Bijektionen der Strategiemengen, sodass die Kosten erhalten bleiben.


--------------------------------------------------------------------------------------------------------------------------------
## Foundations of Game Theory: Non-Cooperative Games ##
	by Nicolai N. Vorob'ev | Foundations of Game Theory - Non-Cooperative Games.pdf

Definiert _Teilspiele_ (Einschränkung der Strategieräume), _strategische Äquivalenz_ zwischen Spielen mit gemeinsamem Strategieraum (gegeben durch strikt monotone Funktionen zwischen den Kostenräumen) und _\epsilon-Homomorphismen_ (erlauben Permutation der Spieler und one-to-many Abbildungen zwischen Strategieräumen, sodass sich die Kosten jedes Spielers dabei um höchstens \epsilon ändern (~unpräzise Zusammenfassung!)). Letztere führen dann zu 4 Aussagen, welche als Axiome für eine Kategorie der Spiele verwendet werden.

Weiter wird der Begriff _Optimalitätsprinzip_ definiert: Jedes solche ist gegeben durch eine Abbildung von der Menge der Spiele in eine Teilmenge seines jeweiligen Strategieraums. Diese Teilmenge wird dann als "Gleichgewichts-/Optimalitätsmenge" verstanden. Beispiele für solche Prinzipien sind dann Nash-Gleichgewicht oder soziales Optimum.


	
	
================================================================================================================================
# Unsortiertes #


--------------------------------------------------------------------------------------------------------------------------------
## Tight Bounds for Cost-Sharing in Weighted Congestion Games ##

???


--------------------------------------------------------------------------------------------------------------------------------
## Optimierung, Operations Research, Spieltheorie ##
	by Karl Heinz Borgwardt
	
Enthält ein Teil "Einführung in die Spieltheorie" (könnte auch ganz praktisch für deutsche Übersetzungen englischer Begriffe sein). 

Arbeitet recht viel mit Spielen in extensiver Form, hat z.B. Sätze über Gleichgewichte in diesen und eine Definition für Teilspiele (in extensiver Form).

Definiert eine dritte Form von Spielen: _Spiele in Charakteristischer Funktionsform_. Für eine Spielermenge N ist ein solches Spiel gegeben durch eine charakteristische Funktion P(N) -> IR, wobei der entsprechende Wert einer Teilmenge S \subseteq N die durch eine Koalition der Spieler in S erzwingbare Auszahlung darstellt.

Theorem (Allgemeiner Satz über die Existenz von Nash-Gleichgewichten in Spielen in strategischer Form): Sind die Strategieräume konvexe und kompakte Teilmengen von IR^n, die Auszahlungsfunktionen stetig auf dem Produkt der Strategieräume und für die Auszahlungsfunktionen konkav in der Strategie des jeweiligen Spielers für jedes feste Strategieprofil aller anderen Spieler, so besitzt das Spiel mindestens ein Gleichgewicht.  
Beweis über Browerschen Fixpunktsatz (dürfte analog zu dem Theorem aus dem Online Optimierungs-Seminar sein).
