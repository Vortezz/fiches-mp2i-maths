#set page(header: box(width: 100%, grid(
  columns: (100%),
  rows: (20pt, 8pt),
  align(right, text("CHAPITRE 1. LOGIQUE ET RAISONNEMENTS")),
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

#titleBox("Logique et raisonnements")

= Rudiments de logique
== Formule propositionnelles, prédicats

Une *formule propositionnelle* est une formule liant des lettres représentant des _propositions élémentaires_ et les _opérations logiques_ suivantes :

- $and$ : et
- $or$ : ou
- $==>$ : implique
- $<==>$ : équivalent à
- $not$ : non

On dit que $A$ est *suffisante* à $B$ si $A ==> B$, que $A$ est *nécessaire* à $B$ si $B ==> A$ et qu'elle est *suffisante et nécessaire* si $A <==> B$.

Les *tables de vérité* permettent de savoir quand une propriété est vraie ou fausse.

#grid(columns: 5, 
  gutter: 10pt,
  table(rows: 3, columns: 2, align: center, 
    $P$, $not P$, 
    $V$, $F$, 
    $F$, $V$
  ), 
  table(rows: 5, columns: 3, align: center, 
    $P$, $Q$, $(P or Q)$,
    $V$, $V$, $V$,
    $V$, $F$, $V$,
    $F$, $V$, $V$,
    $F$, $F$, $F$
  ),
  table(rows: 5, columns: 3, align: center, 
    $P$, $Q$, $(P and Q)$,
    $V$, $V$, $V$,
    $V$, $F$, $F$,
    $F$, $V$, $F$,
    $F$, $F$, $F$
  ),
  table(rows: 5, columns: 3, align: center, 
    $P$, $Q$, $(P ==> Q)$,
    $V$, $V$, $V$,
    $V$, $F$, $F$,
    $F$, $V$, $V$,
    $F$, $F$, $V$
  ),
  table(rows: 5, columns: 3, align: center, 
    $P$, $Q$, $(P <==> Q)$,
    $V$, $V$, $V$,
    $V$, $F$, $F$,
    $F$, $V$, $F$,
    $F$, $F$, $V$
  ),
)

Deux formules sont dites *équivalentes* si et seulement si elles possèdent la même table de vérité, ainsi on note $A equiv B$.

Les *tautologies* sont des formules toujours vraies.

On a les équivalences et tautologies suivantes :

- $(A and B) and C equiv A and (B and C)$ _(associativité)_
- $(A or B) or C equiv A or (B or C)$ _(associativité)_
- $A and (B or C) equiv (A and B) or (A and C)$ _(distributivité)_
- $A or (B and C) equiv (A or B) and (A or C)$ _(distributivité)_
- $(A and (A ==> B)) ==> B$ est une tautologie _(modus ponens)_
- $(A ==> B) <==> B or not A$
- $(A ==> B) <==> (not B ==> not A)$ _(contraposée)_

== Quantificateurs

On a $F(x)$ une propriété dépendant d'une variable $x$,

- Le quantificateur $forall$ est satisfait si et seulement si, pour toute valeur possible prise de $x$, $F(x)$ est vraie.

- Le quantificateur $exists$ est satisfait si et seulement si, il existe un $x$ tel que $F(x)$ soit vraie. Il est donc possible de choisir un $x$ convenable. Si le $x$ est unique, on utilise le quantificateur $exists !$.

Dans le cas des quantificateurs, les variables choisies sont dites *muettes*. Les quantificateurs peuvent être réduits à des intervalles spécifiques avec $forall x in E$ ou $exists x in E$.

== Négation

On a les formules suivantes pour les négations :

- $not not P equiv P$
- $not (P or Q) equiv not P and not Q$ _(loi de De Morgan)_
- $not (P and Q) equiv not P and or Q$ _(loi de De Morgan)_
- $not (P ==> Q) equiv P and not Q$
- $not (P <==> Q) equiv((not P) <==> Q) equiv (Q <==> (not P))$

Les quantificateurs sont aussi négationnables :

- $not (forall x P(x)) equiv exists x (not P(x))$
- $not (exists x P(x)) equiv forall x (not P(x))$

= Principes de rédaction, modes raisonnements et démonstrations

== Composition d’un texte mathématique

Un texte mathématique est constitué de :

+ *définitions* : descriptions de certains objets
+ *résultats* : énoncés mettant en jeu les objets définis, et donnant des propriétés vérifiées. On distingue :
  - _axiomes_ : résultats qui sont des vérités fondamentales qui ne sont pas à démontrer
  - _théorèmes_ : résultats les plus significatifs, démontrés à partir des axiomes et de résultats démontrés antérieurement
  - _propositions_ : résultats de moindre envergure
  - _lemmes_ : résultats à voir comme des étapes intermédiaires
  - _corollaires_ : conséquences d'autres résultats
+ *démonstrations* : justification de la véracité des résultats
+ *conjectures* : ce qu'on pense être vrai mais qu'on a pas réussi à prouver

Un énoncé est souvent sous la forme $A ==> B$ avec $A$ les hypothèses et $B$ les conclusions.

== Comment construire une démonstration
Pour construire une démonstration on utilise les principes suivants :

- *Prouver une implication* $A ==> B$ :

  On suppose que $A$ est vrai, et on montre que $B$ est vrai. Il peut être plus simple de montrer la contraposée dans certains cas.

- *Prouver une équivalence* $A <==> B$ :

  On prouve $A ==> B$ et $B ==> A$, il est aussi possible de faire par équivalences successives mais il faut bien vérifier qu'on peut _remonter_ les équivalences.

- *Prouver une conjonction* $A and B$ :

  On prouve $A$ puis on prouve $B$.

- *Prouver une disjonction* $A or B$ :

  On prouve que $not A ==> B$, ainsi on suppose que $not A$ et on montre que $B$ est vraie. On peut intervertir $A$ et $B$ pour faciliter la résolution.

- *Prouver* $forall x A(x) :$

  On pose un $x$ *supposé quelconque* et on montre que pour ce $x$, $A(x)$ est vérifié. Le fait d'avoir pris $x$ quelconque montre qu'alors $A(x)$ est vrai pour tout $x$.

- *Prouver* $exists x A(x) :$

  Dans le meilleur des cas on construit *x* qui convient. Pour s'aider à trouver un *x* convenable on peut faire une analyse/synthèse.

#emoji.warning *Il ne faut jamais perdre de vue le but d'une preuve*

== Le Modus ponens

Pour que $B$ soit vrai, il suffit que $A$ soit vrai et que $A ==> B$, on exploite la tautologie $(A and (A ==> B)) ==> B$. Il est important de vérifier à la fois $A$ et à la fois $A ==> B$, comme quand on utilise un théorème utilisé en donnant son nom, et la validité des hypothèses d'autre part.

== Démonstration par la contraposée

On exploite l'équivalence $(A ==> B) equiv (not B ==> not A)$, ainsi on suppose la conclusion $B$ fausse et on montre que dans ce cas l'hypothèse $A$ ne peut être vraie. L'expression $not B ==> not A$ est appelée *contraposée* de $A ==> B$.

Si $A$ est toujours vraie, alors on montre que supposer $not B$ nous amène à une contradiction, on procède donc à une *démonstration par l'absurde*.

== Disjonction de cas

Le principe de disjonction de cas repose sur $(A or B) ==> C equiv (A ==> C) and (B ==> C)$. On regarde ce qu'il se passe pour l'hypothèse $A$, puis pour l'hypothèse $B$. Ainsi si $A$ est vérifiée $C$ aussi, et pareillement pour $B$.

== Analyse-Synthèse

Ce principe de démonstration est surtout adapté pour les problèmes existenciels.

- Phase d'*analyse* (recherche de CN) : On suppose que l'objet existe, et à l'aide des propriétés qu'il est censé vérifier on récupère le plus d'informations possibles sur la façon de le construire.
- Phase de *synthèse* (vérification des CS) : Lorsqu'on a suffisamment d'informations sur une façon de construire l'objet, on construit un objet de la sorte, et on vérifie si il répond au problème.
- Si la phase d'analyse fournit une expression explicite de l'objet, alors l'objet est unique.

#emoji.warning *Il est primordial de préciser qu'il s'agit d'une analyse synthèse car on suppose que l'objet existe.*

== Raisonnement par récurrence

Le principe de récurrence est un axiome de la construction de $NN$, il s'énonce :

#align(center, $(P(0) and (forall n in NN, P(n) ==> P(n+1))) ==> (forall n in NN, P(n))$)

On a $P(0)$ l'initialisation et $forall n in NN, P(n) ==> P(n+1))$ l'hérédité.

== Principe de la descente infinie (HP)

// Do not touch
#block(height: 400pt)
  