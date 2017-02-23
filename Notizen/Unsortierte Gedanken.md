<h1>Unsortierte Gedanken</h1>

## Potentiale ##

Ein Potential entspricht einer "Topografischie" auf dem Strategieraum. Geht man in Richtung i, entspricht der Anstieg/Abstieg dem entsprechenden Kostenanstieg/-abstieg für Spieler i. Die tatsächliche Kostenfunktion entspricht damit dem Potential verschoben um eine nur von den Strategiewahlen der _anderen_ Spieler abhängige Funktion (für den Spaltenspieler ist diese also bspw. Zeilenweise konstant).
 -> Das Potential beschreibt ein Koordinationsspiel (gleiche Kostenfkt. für alle Spieler)
 -> Die Verschiebungsfunktionen beschreiben ein Dummyspiel (bei gegebener Wahl der Gegenstrategien hat die Strategiewahl _eines_ Spielers keinen Einfluss auf _seine_ Kosten)
 
 => G hat exaktes Potential <=> G ist "Summe" eines Koordinations- und eines Dummyspiels

		--Opti4-Skript-Harks

		
## exakte Potentialspiele = Auslastungsspiele ##

* Jedes Auslastungsspiel besitzt ein Potential (Rosenthalpotentialfunktion)		
* Jedes Spiel mit einem exakten Potential ist isomorph zu einem Auslastungsspiel
		--Opti4-Skript-Harks

 -> Man bekommt Abbildungen von Auslastungsspielen auf Auslastungsspiele und von exakten Potentialspielen auf exakte Potentialspiele
		letztere ist die Identität (inkl. Potentialfunktion! d.h. Rosenthalfunktion ist ursprüngliche Potentialfunktion), erstere nicht (was auch Sinn macht, denn mehrere Auslastungsspiele können das gleiche Spiel sein (und damit erst recht das gleiche Potential haben)).
 -> Die Abbildung Ausl.spiel -> Ausl.spiel erzeugt nur Auslastungsspiele mit Kostenfunktionen mit einpunktigem Träger => jedes Auslastungsspiel ist isomorph zu einem mit ausschließlich solchen Kostenfunktion.

		
## Lemma von Monderer und Shapley ##

Aussage: Endliches Strategiespiel G besitzt exaktes Potential <=> jeder 4-Zykel im Strategieraum hat Gesamtänderung 0

Intuition: Besitzt ein Spiel ein exaktes Potential (=Topografie auf Strategieraum), so muss die Gesamtänderung (=Höhenunterschied) entlang jedes Kreises 0 sein. Umgekehrt kann ein Potential konstruiert werden, indem man eine beliebige Stelle zum 0-Punkt erklärt und allen anderen Punkten im Strategieraum den Höhenunterschied zum 0-Punkt als Potential zuweist. Dieses Vorgehen führt genau dann zu einem wohldefinierten Potential, wenn die Gesamtänderung entlang aller Kreise 0 ist.
Das Lemma besagt nun, dass es genügt die Gesamtänderung entlang aller 4-Kreise zu testen (kleinstmögliche Kreise!)

Beweis: (vermutlich?) längere Kreise lassen sich in Teilkreise der Länge 4 zerlegen (klingt irgendwie ähnlich zum beweis vom Satz von Stokes :O).

Für 2-mal diffbare Funktionen (wobei die Strategieräume reele Intervalle sind) gilt: 
	G hat exaktes Potential <=> d^2 u_i/(dx_i dx_j) = d^2 u_j/(dx_i dx_j)
(kontinuierliches Analagon zu oben (auch die Konstruktion des Potentials ist entsprechend))

		--Monderer-Shapley-1996.pdf
		
		
## Ordnungstheorie ##

Eine _Präordnung_ ist eine reflexive und trasitive Relation.

Eine _Partialordnung_ ist eine antisymmetrische Präordnung.

Jede partielle Ordnung ≤ entspricht einer strikten Ordnung < via  
a < b <=> a ≤ b UND nicht a = b bzw. a ≤ b <=> a < b ODER a = b

Jede Präordnung induziert eine Partialordnung auf ihren Äquivalenzklassen.

Eine _totale Ordnung_ ist eine partiale Ordnung, sodass für je zwei Elemente x ≤ y oder y ≤ x gilt.

Eine _Wohlordnung_ ist eine totale Ordnung, sodass jede nicht-leere Teilmenge ein kleinstes Element hat.

Ein _Verband_ (_Lattice_) ist eine Partialordnung, wenn es zu jede zweielementige Teilmenge Infemum und Supremum besitzt (in der ganzen Menge!).

Eine Funktion f: M -> N zwischen zwei partiell geordneten Mengen heißt
* _monoton/ordnungserhaltend_ <=> a ≤ b => f(a) ≤ f(b)
* _streng monoton_ <=> a < b => f(a) < f(b)
* _Ordnungs-reflektierend_ <=> f(a) ≤ f(b) => a ≤ b
* _Ordnungseinbettung_ <=> a ≤ b <=> f(a) ≤ f(b)
* _Ordnungsisomorphismus_ <=> f surjektive Ordnungseinbettung

		--https://en.wikipedia.org/wiki/Order_relation
		
		
## Äquivalenz von Spielen in strategischer und extensiver Form ##

Ein _Spiel in extensiver Form_ ist gegeben durch eine Spielermenge N und einen gerichteten Baum. Die internen Knoten dieses Baumes sind mit jeweils einem der Spielernamen aus N beschriftet (zusätzlich kann auch noch eine Beschriftung "Zufall" erlaubt sein - ein derart beschrifteter Knoten besitzt dann zusätzlich eine Wahrscheinlichkeitsverteilung über die ausgehenden Kanten). Die ausgehenden Kanten eines Knotens von Spieler i entsprechend den ihm in dieser Spielsituation zur Verfügung stehenden _Aktionen/Spielzügen_ und sie sind mit den Namen dieser beschriftet. Die Knotenmenge jedes Spielers ist zusätzlich noch in _Informationsmengen_ partitioniert, wobei alle Knoten, die in der gleichen Informationsmenge liegen, die gleiche Anzahl und Beschriftung der ausgehenden Kanten haben müssen. Schließlich ist jedes Blatt b mit einer _Auszahlungsfunktion_ c_b: N -> K beschriftet.  
Jeder Wurzel-Blatt-Pfad entspricht nun einem möglichen Spielverlauf. Tatsächlich gespielt wird das Spiel, indem jeder Spieler für jede Informationsmenge die auszuführende Aktion festlegt (und bei Zufallsknoten ggfl.s die Wahrscheinlichkeitsverteilung "gefragt" wird). Dabei ist es egal, ob all diese Festlegungen zu Beginn oder erst im Laufe des Spiels getroffen werden.

Theorem: Zu jedem Spiel in extensiver Form existiert ein äquivalentes Spiel in strategischer Form und umgekehrt.

Beweis: Entscheidungen in extensiver Form zu Beginn festlegen entspricht reiner Strategie in strategischer Form. Umgekehrt kann jedes strategische Spiel zu einem Baum gemacht werden, indem man eine Informationsmenge für jeden Spieler einführt, aus der je eine Kante für jede Strategie dieses Spielers in die Informationsmenge des nächsten Spielers führt. Diese Richtung funktioniert vermutlich nur für endlich viele Spieler (aber beliebige Strategieräume)?

Bem: In Spielen mit nicht-vollständiger Information/nicht perfektem Gedächtnis gibt es für Spiele in extensiver Form verschiedene Varianten für Randomisierung, die __nicht__ äquivalent sind.

		--Online Computation and Competetitive Analysis von Allan Borodin, Ran El-Yaniv (Kapitel 6)
		
