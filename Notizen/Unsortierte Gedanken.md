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