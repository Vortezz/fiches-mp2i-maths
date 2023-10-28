#set page(header: box(width: 100%, grid(
  columns: (100%),
  rows: (20pt, 8pt),
  align(right, text("CHAPITRE 3. RELATIONS")),
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

#titleBox("Relations")

= Définitions générales

== Relations

Une *relation binaire* entre deux ensembls $E$ et $F$ est un sous-ensemble $G$ de $E times F$. On note souvent $x R y$ pour dire que $(x, y) in G$, et on dit que $x$ est en relation avec $y$ par $R$.

Une relation entre $E$ et $F$ est dite *fonctionnelle* si pour tout $x in E$, il _existe au plus un unique_ $y in F$ tel que $x R y$.

Si $R$ est une relation entre $E$ et lui-même, on dit que $R$ est une *relation sur $E$*.

== Définitions de quelques propriétés

Soit $R$ une relation sur $E$ :

- $R$ est *réflexive* si pour tout $x in E$, $x R x$.
- $R$ est *symétrique* si pour tout $x, y in E$, $x R y ==> y R x$.
- $R$ est *antisymétrique* si pour tout $x, y in E$, $x R y and y R x ==> x = y$.
- $R$ est *transitive* si pour tout $x, y, z in E$, $x R y and y R z ==> x R z$.
- $R$ est *irréflexive* si pour tout $x in E$, $not(x R x)$.
- $R$ est *asymétrique* si pour tout $x, y in E$, $x R y ==> not(y R x)$.

On remarque donc que une relation _antisymétrique_ et _irréflexive_ est _asymétrique_.

= Relations d'équivalence

== Définition

Une *relation d'équivalence* sur un ensemble $E$ est une relation $R$ sur $E$ qui est _réflexive_, _symétrique_ et _transitive_. On note souvent $x equiv y$ ou $x tilde y$ pour dire que $x R y$.

== Classes d'équivalence, ensemble quotient

Soit $R$ une relation d'équivalence sur $E$, et on a $x in E$, ainsi la *classe d'équivalence* de $x$ sous la relation $R$ est le sous-ensemble $C_x$ de $E$ des élements en relation avec $x$ par $R$ : $C_x = overline(x) = {y in E | x R y}$.

Si $y, z in overline(x)$, alors $y R z$

L'ensemble des classes d'équivalence de $E$ sous $R$ forme une partition de $E$. On note $E\/R$ l'ensemble des classes d'équivalence de $E$ sous $R$, et on l'appelle *ensemble quotient* de $E$ par $R$.

On appelle *projection canonique* la fonction $pi_R : E ->> E\/R$ qui à $x in E$ associe $overline(x) in E\/R$. $pi_R$ est surjective et vérifie $x R y ==> pi_R(x) = pi_R(y)$.

#emoji.warning $pi_R$ n'est pas injective en général, elle l'est seulement dans le cas d'une relation d'égalité.

Soit $f : E -> F$ une fonction, et $R$ une relation d'équivalence sur $E$, les propriétés suivantes sont équivalentes :

- $forall (x,y) in E^2, x R y ==> f(x) = f(y)$
- Il existe une fonction $g : E\/R -> F$ telle que $f = g circle.tiny pi_R$

== Congruence

Soit $E$ un ensemble muni d'un certain nombre d'opérations $times_1, ..., times_n$. On dit que $R$ est une *congruence* si :

$ forall(x,y,x',y') in E^4, forall i in [|1,n|], (x R x') and (y R y') ==> (x times_i y) R (x' times_i y') $

La relation de congruence des entiers notée $equiv ""_([n])$ est une congruence sur $(ZZ, plus, times)$.

Soit $(E, times_1, ..., times_n)$ un ensemble muni de $n$ opérations, et $R$ une congruence sur $E$. On peut définir sur $E\/R$ les opérations $ dot(times_1), ..., dot(times_n)$ telles que pour tout $i in [|1,n|]$ et pour tout $x, y in E$, $overline(x)dot(times_i)overline(y)= overline(x times_i y)$.

On peut munir $ZZ\/n ZZ$ des opérations $dot(plus)$ et $dot(times)$, notées plus simple $plus$ et $times$, telles que pour tout $x, y in ZZ$, $overline(x)plus overline(y) = overline(x + y)$ et $overline(x)times overline(y) = overline(x times y)$.

= Relations d'ordre

== Définitions

Une *relation d'ordre* sur un ensemble $E$ est une relation $R$ sur $E$ qui est _réflexive_, _antisymétrique_. On note souvent $x <= y$ pour dire que $x R y$. Les écritures $x <= y$ et $y >= x$ sont équivalentes.

Une *relation d'ordre strict* est une relation _irréflexive_ et _transitive_. On en déduit que la relation d'ordre strict est aussi _antisymétrique_.

- Toute d'ordre $<=$ définit une relation d'ordre strict par $x < y <=> x <= y and x != y$.

- Toute relation d'ordre strict $<$ définit une relation d'ordre par $x <= y <=> x < y or x = y$.

On dit que $R$ est une *relation d'ordre total* si pour tout $x, y in E$, $x R y or y R x$, sinon $R$ est une *relation d'ordre partiel*.

Soit $R$ une relation sur $E$, on a $A subset E$, alors $R$ définit sur $A$ une relation d'ordre $R'$ par $x R' y <=> x R y$.

Il s'agit de la *restriction* de $R$ à $A$ ou de la *relation induite* par $R$ sur $A$.

== Minimalité, maximalité

- $m$ est appelé plus *petit élément* de $E$ (ou *élément minimum*) si pour tout $x in E$, $m <= x$.
- $M$ est appelé plus *grand élément* de $E$ (ou *élément maximum*) si pour tout $x in E$, $x <= M$.

#emoji.warning Le minimum et le maximum sont uniques si ils existent.

- $m$ est appelé *élément minimal* de $E$ si il n'existe pas d'élément $x in E$ tel que $x < m$.
- $M$ est appelé *élément maximal* de $E$ si il n'existe pas d'élément $x in E$ tel que $x > M$.

Si $E$ est ordonné, fini et non vide, alors $E$ admet un élément minimal. Si $E$ est fini et ordonné, et que $E$ admet un unique élément minimal, alors cet élément est aussi l'élément minimum de $E$.

Si l'ordre défini sur $E$ est total, l'élément minimal coïncide avec l'élément minimum. *Attention*, c'est faux si l'ordre est partiel car $x < m equiv.not not (x >= m)$

#block()
Avec $A subset E$,

- $m$ est appelé minorant de $A$ si pour tout $x in A$, $x >= m$.
- $M$ est appelé majorant de $A$ si pour tout $x in A$, $x <= M$.

#block()

- La *borne inférieure* de $A$ (ou *infimum*) est le plus grand minorant de $A$ sous réserve d'existence. On la note $inf_E (x)$ ou $inf (x)$.
- La *borne supérieure* de $A$ (ou *supremum*) est le plus petit majorant de $A$ sous réserve d'existence. On la note $sup_E (x)$ ou $sup (x)$.

*Propriété fondamentale de $RR$*, toute sous-ensemble non vide de $RR$ qui est majorée admet une borne supérieure.

Tout sous-ensemble borné de $QQ$ admet une borne supérieure dans $RR$, mais pas forcément dans $QQ$.

Pour montrer que $s = sup(A)$, on montre que $s$ est un majorant de $A$ et que pour tout majorant $M$ de $A$, $M >= s$.

Dans $NN^*$ muni de la divisibilité, $inf(a,b) = "pgcd"(a,b)$ et $sup(a,b) = "ppcm"(a,b)$. \
Dans $P(E)$ muni de l'inclusion, $inf(A,B) = A union B$ et $sup(A,B) = A sect B$.

$A$ admet un maximum $M$ si et seulement si $A$ admet une borne supérieure $b$ et si $b in A$. Dans ce cas, $M = sup(A)$.

== Lemme de Zorn

On dit que $E$ est un ensemble *inductif* si pour tout $F subset E$ totalement ordonné (*chaine*), $F$ admet un majorant dans $E$.

Tout ensemble ordonné et fini est inductif.

*Lemme de Zorn* : Tout ensemble inductif admet un élément maximal (_reformulation de l'axiome du choix_).