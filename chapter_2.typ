#set page(header: box(width: 100%, grid(
  columns: (100%),
  rows: (20pt, 8pt),
  align(right, text("CHAPITRE 1. ENSEMBLES ET APPLICATIONS")),
  line(length: 100%),
)), footer: box(width: 100%, grid(
  columns: (50%, 50%),
  rows: (8pt, 20pt),
  line(length: 100%),
  line(length: 100%),
  align(left, text("Victor Sarrazin - MP2I")),
  align(right, text("Louis Le Grand - 2023/2024")),
)))

#set heading(numbering: "I.1")

#let titleBox(title) = align(center, block(below: 50pt, box(height: auto, fill: rgb("#eeeeee"), width: auto, inset: 40pt, text(title, size: 20pt, weight: "bold"))))

#titleBox("Ensembles et applications")

= Théorie intuitive des ensembles

== Définition intuitive

Un *ensemble* $E$ est une collection d'objets appelés *éléments* de $E$.

On dit que $x$ _appartient_ à $E$ et on note $x in E$ si $x$ est un élément de $E$.

Il existe plusieurs manières de définir un ensemble :

- Par *énumération* : $E = {x_1, ..., x_n}$
- Par *compréhension* : $E = {x in A | P(x)}$ (Tous les éléments de $A$ vérifiant la propriété $P$)
- Par *induction structurelle* :
    - On prend des _éléments initiaux_
    - On prend une _manière de construire de nouveaux éléments_ à partir des éléments initiaux
- Par *construction* : On utilise $union$ et $sect$ pour construire de nouveaux ensembles à partir d'ensembles existants

A noter qu'il est possible de construire des ensembles par induction structurelle de deux manières différentes :

- Par le bas : On prend des éléments initiaux et on construit de nouveaux éléments à partir de ceux-ci

- Par le haut : On prend un ensemble $E$ le "plus petit ensemble" contenant $A_1,...,A_n$ et stable pour les constructions $P_1,...,P_k$. C'est souvent l'intersection de tous les ensembles possédant une propriété de stabilité.

== Inclusion

On note $F subset E$ si $forall x in F ==> x in E$, et on dit que $F$ est *inclus* dans $E$.

Si $F = G$ si et seulement si $F subset G$ et $G subset F$, on dit que $F$ et $G$ sont *égaux*.

Si $F subset G$ et $G subset H$, alors $F subset H$ (transitivité de l'inclusion).

#emoji.warning Ne pas confondre $subset$ et $in$ !

== Petits ensembles, cardinal d'un ensemble

L'*ensemble vide* est sous ensemble de tous ensemble $E$. On le note $emptyset$.

On appelle *singleton* un ensemble contenant un seul élément ${a}$. \
On appelle *paire* un ensemble contenant deux éléments distincts ${a, b}$.

On appelle intuitivement *cardinal* d'un ensemble $E$ le nombre d'éléments de $E$. On le note $|E|$.

== Ensemble des parties d'un ensemble

On note $P(E)$ l'ensemble des parties de $E$, c'est-à-dire l'ensemble dont les éléments sont les sous-ensembles de $E$.

Puisque $emptyset in P(E)$ et $E in P(E)$, on a $P(E) != emptyset$.

On note $P_k (E)$ l'ensemble des parties de $E$ à $k$ éléments.

Notation troeschienne :
- $P(n) = P([|1,n|])$
- $P_k (n) = P_k ([|1,n|])$

== Opérations sur les parties d'un ensemble

- *Intersection* : L'intersection de deux ensembles $E$ et $F$ est l'ensemble des éléments appartenant à $E$ et à $F$. On la note $E sect F$.

- *Union* : L'union de deux ensembles $E$ et $F$ est l'ensemble des éléments appartenant à $E$ ou à $F$. On la note $E union F$.

- *Différence ensembliste* : La différence ensembliste de deux ensembles $E$ et $F$ est l'ensemble des éléments appartenant à $E$ mais pas à $F$. On la note $E \\ F$.

- *Complémentaire* : On a $F subset E$, Le complémentaire d'un ensemble $F$ dans un ensemble $E$ est la différence ensembliste $E \\ F$. On le note $E \\ F = E - F = C_E F = F^c = F_c = overline(F)$

- *Différence symétrique* : La différence symétrique de deux ensembles $E$ et $F$ est l'ensemble des éléments appartenant à $E$ ou à $F$ mais pas aux deux. On la note $E Delta F$.

Il est important de noter que $union$ et $sect$ sont des opérations *associatives*, *commutatives* et *distribuables* l'une par rapport à l'autre.

Deux ensembles $E$ et $F$ sont *disjoints* si $E sect F = emptyset$. On peut alors noter $E union F$ sous la forme $E union.plus F$ ou $E union.sq F$.

On peut appliquer les lois de De Morgan aux opérations sur les ensembles :

$ (E union F)^c = E^c sect F^c "et" (E sect F)^c = E^c union F^c $

Le complémentaire est décroissant, ainsi $forall A,B in P(E), A subset B ==> B^c subset A^c$

$overline(A)$ est l'unique sous ensemble $B$ tel que $A union B = E$ et $A sect B = emptyset$.

On en déduit que :

- $C_E E = emptyset$
- $C_E emptyset = E$
- $C_E C_E F = F$

== Union et intersection d'une famille d'ensembles

Une *famille* d'éléments d'un ensemble $E$, $a_i in E$ est une fonction $a_i : I -> E$, notée $(a_i)_(i in I)$

On définit l'union et l'intersection d'une famille d'ensembles $(A_i)_(i in I)$ par :

- $ union.big_(i in I) A_i = {x in E | exists i in I, x in A_i} $
- $ sect.big_(i in I) A_i = {x in E | forall i in I, x in A_i} $

Si les $A_i$ sont deux à deux disjoints, on peut écrire $union.big.plus_(i in I) A_i $ ou $union.big.sq_(i in I) A_i $

== Partitions

Une *partition* d'un ensemble $E$ est un sous ensemble $F$ de $P(E)$ tel que :

- $forall A in F, A != emptyset$
- $forall A,B in F, A != B ==> A sect B = emptyset$
- $union.big_(A in F) A = E$

Il est possible de faire une *partition ordonnée* avec un $n$-uplet, un *recouvrement* soit une famille d'ensembles dont l'union est $E$ et un *recouvrement disjoint* soit une famille d'ensembles dont l'union est $E$ et deux à deux disjoints.

== Produit cartésien

On appelle $A times V$ le *produit cartésien* de $A$ et $V$, soit l'ensemble des couples $(a, v)$ avec $a in A$ et $v in V$ vérifiant :

$ (a,v) = (a',v') <==> (a = a' and v = v') $

Si $A times V = emptyset <==> (A = emptyset or V = emptyset)$

Il est possible de construire des $n$-uplets, en effet $(a,b,c)=(a,(b,c))$, c'est ainsi généralisable.