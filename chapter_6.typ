#set page(header: box(width: 100%, grid(
  columns: (100%),
  rows: (20pt, 8pt),
  align(right, text("CHAPITRE 6. NOMBRES RÉELS")),
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

#titleBox("Nombres réels")

= $NN$ et $ZZ$

== Les entiers naturels

Les entiers naturels sont définis par induction structurelle, on a $0$, et on a la relation successeur $S(n) = n+1$.

On a l'*axiome de récurrence* : $(P(0) and (forall n in NN, P(n) ==> P(n+1)) ==> (forall n in NN, P(n)))$

*Propriété fondamentale de $NN$* : _Tout sous ensemble non vide et majoré de $NN$ admet un maximum._

Il en découle que tout sous ensemble non vide de $NN$ admet un minimum.

*La propriété fondamentale de $NN$ est équivalente à l'axiome de récurrence.*

De plus, $NN$ est doté d'une $cases(+ "commutative et associative", times "commutative, associative et distribuable sur le " +)$

== Les entiers relatifs

Pour construire $ZZ$ on symétrise tout $n in NN$.

Les opérations $+$ et $times$ se prolongent à $ZZ$, ainsi $ZZ$ est un *anneau* ($+$ associative, commutative avec un neutre $0$ et il existe $-a$ et une $times$ associative, distribuable sur $+$ et avec un neutre $1$).

On dit aussi que $(A, +)$ est un *groupe abélien*.

= $QQ$

== Construction de $QQ$

La classe $overline((a,b))$ du couple $(a,b)$ est noté $a/b$ avec $(a,b) in ZZ times NN^*$. 

Les lois définies sur $ZZ times NN^*$ telles que $(a,b)+(c,d)=(a d + b c, b d) "et" (a,b) times (c, d) = (a c, b d)$ se prolongent, ainsi on a : $a/b + c/d = (a d + b c)/(b d)$ et $a/b times c/d = (a c)/(b d)$.

Propriétés et lois de $QQ$ :

- $+$ et $times$ commutatives et associatives
- $times$ distribuable sur le $+$
- $0 = 0/1$ est neutre pour $+$, et $a/b$ admet un opposé $-a/b$
- $a/b = 0$ si et seulement si $a=0$
- $1 = 1/1$ neutre pour $times$, tout $a/b != 0$ admet un inverse $b/a$

Ainsi $QQ$ est un *corps*.

Si on a $q=a/b$ et $r=c/d$ (avec $(b,d) in (NN^*)^2$), alors le signe de $a d - b c$ est indépendant des $(a,b,c,d)$ choisis pour $q$ et $r$.

Ainsi $q <= r$ si et seulement si $a d - b c <= 0$. La relation $<=$ ainsi définie est un *ordre total* sur $QQ$.

= $RR$

== Existence de nombres non rationnels

Soit $(x,y) in (RR^*)^2$. On dit que $x$ et $y$ sont *incommensurables* si $x/y$ est irrationel.

Si $n$ n'est pas un carré parfait, $sqrt(n)$ est irrationnelle.

== L'ensemble ordonné $RR$

On obtient $RR$ en "bouchant" les trous de $QQ$, on considère $E = {x in QQ | x^2 <= 2}$, ainsi $E$ est borné et n'admet pas de borne supérieure dans $QQ$. En construisant $RR$, on comble ces trous en complétamt $QQ$ des bornes supérieures de tous les ensembles non vides bornés.

*Propriété fondamentale de $RR$* : _Tout sous ensemble $E$ non vide et majoré de $RR$ admet une borne supérieure dans $RR$_.

On en déduit que _Tous sous ensemble $E$ non vide et majoré de $RR$ admet une borne inférieure dans $RR$_.

== Valeurs absolue et partie positive et négative

On a $|x|$ la *valeur absolue* de $x$, définie par $|x| = cases(x "si" x >= 0, -x "si" x < 0)$. 

Elle est utile notamment pour majorer et minorer $A$ par $B$ et $-B$. En effet, $-B <= A <= B$ est équivalent à $|A|<=B$.

On note $x^+$ la *partie positive* de $x$ tel que $x^+ = max(0,x)$ et on note $x^-$ la *partie négative* de $x$ tel que $x^- = -min(0,x) = max(0, -x)$.

Et on a les propriétés suivantes :

- $x^+ >= 0$ et $x^- >= 0$
- $x^+ = 0$ ou $x^- = 0$
- $x = x^+ - x^-$
- $|x| = x^+ + x^-$

== Rappels sur les opérations et les inégalités

La relation d'ordre sur $RR$ vérifie :

- C'est une relation d'_ordre total_
- $forall (x,y) in RR^2, x <= y <==> x-y in RR^+$
- $forall (x,y) in (RR^+)^2, x + y >= 0 "avec égalité si" x=y=0$
- $forall (x,y) in (RR^+)^2, x y >= 0$

On a $x, y in RR$, ainsi d'après la *règle des signes* on a :

- Si $x >= 0 "et" y <= 0$ ou $x <= 0 "et" y >= 0$, alors $x y <= 0$
- Si $x <= 0 "et" y <= 0$ alors $x y >= 0$

Soit $a, b, c, d in RR$, alors :

- Si $a <= b "et" c <= d$, $a + c <= b + d$ avec égalité $a = b "et" c = d$
- Si $a <= b "alors" -b <= -a$
- Si $a <= b "et" c <= d$, $a - d <= b - c$
- Si $a >= 0$ et $c <= d$, alors $a c <= a d$
- Si $a <= 0$ et $c <= d$, alors $a c >= a d$
- Si $0 < a <= b$ et $0 < c <= d$, alors $0 < a c <= b d$ avec égalité si et seulement si $a = b$ et $c = d$
- Sinon pour les produits d'inégalités on se ramène à des raisonnements sur la valeur absolue avec ajout des signes ensuite.

Pour obtenir des inégalités on peut :

- Tout passer du même côté
- Procéder par étude de fonctions
- Utiliser une propriété de convexité ou de concavité
- Utiliser les inégalités classiques

Soit $a, b in RR$, on a :

- $|a+b| <= |a| + |b|$ (*inégalité triangulaire*)
- $|a+b| >= ||a| - |b||$ (*deuxième inégalité triangulaire*)

Il en découle que $||a|-|b|| <= |a-b| <= |a|+|b|$ et que $|sum_(i in I) a_i| <= sum_(i in I) |a_i| $

On pose $x_1, ..., x_n, y_1, ..., y_n$, alors d'après l'*inégalité de Cauchy-Schwarz* on a :

$ |sum_(i=1)^n x_i y_i|^2 <= (sum_(i=1)^n x_i^2)(sum_(i=1)^n y_i^2) $

avec égalité si et seulement si les vecteurs $(x_1, ..., x_n)$ et $(y_1, ..., y_n)$ sont colinéaires.

On admet l'*inégalité arithmético-géométrique*, ainsi pour tout $X in (RR^(+*))^n$ on a :

$ 1/n (x_1 + ... + x_n) <= root(n, x_1 ... x_n) $

== Division euclidienne dans $RR$

Soit $x, y in RR$ tel qu'il existe $n in NN$ tel que $x < n y$ d'après la *propriété d'Archimède*. Elle est reformulable en disant que pour tout $y > 0$, la suite $(n y)_(n in NN)$ tend vers $+ infinity$ lorsque $n$ tend vers $+ infinity$.

Pour tout $x > 0$ et tout $y > 0$, il existe un rationnel $r$ tel que $0 < r x < y$.

Soit $x, y in RR^(+*)$, il existe un unique $n in NN$ tel que $n y <= x < (n + 1) y$. Et il existe un unique $n' in NN$ tel que $n' x < x <= (n' + 1)y$. Sauf quand $x/y$ est entier, $n=n'$, le résulat se généralise à $x$ négatif.

On a la *division euclidienne*, ainsi :

- Soit $x in RR$ et $y in RR^(+*)$, il existe un unique entier $n$ et un unique réel $r in [0, y[$ tel que $x=n y + r$
- Soit $x in RR$ et $y in RR^(*)$, il existe un unique entier $n$ et un unique réel $r in [0, |y|[$ tel que $x=n y + r$

== Densité de $QQ$ et $RR \\ QQ$ dans $RR$

Un sous ensemble $E$ de $RR$ est *dense* dans $RR$, si pour tout $(x,y) in RR^2$ tel que $x<y$, il existe $z in E$ tel que $x<z<y$.

Les ensembles $QQ$ et $RR \\ QQ$ dans $RR$.

== Partie entière, partie décimale

La *partie entière* d'un réel $x$, notée $floor(x)$ est le quotient de la division euclidienne de $x$ par $1$.

Le reste de cette division est parfois noté ${x}$, appellé *partie décimale*.

Soit $x in RR$,

- $floor(x) = max({n in ZZ | n <= x})$
- $floor(x) = min({n in ZZ | n > x}) - 1$
- $floor(x)$ est l'unique entier tel que $floor(x) <= x < floor(x)+1$
- $floor(x)$ est l'unique entier tel que $x - 1 < floor(x) <= x$

On définit parfois aussi la *partie entière par excès*, notée $ceil(x)$, comme étant le plus petit entier supérieur ou égal à $x$ : $ceil(x) = min({n in ZZ | n >= x})$.

On a alors $x in RR$,

- $ceil(x) = cases(floor(x) + 1 "si" x in.not ZZ, floor(x) "si" x in ZZ)$
- $floor(-x) = -ceil(x)$

On a les propriétés suivantes pour la partie entière : 

- $forall x,y in RR, floor(x) + floor(y) + 1 >= floor(x+y) > floor(x) + floor(y)$
- $forall x,y in RR^+, floor(x y) >= floor(x) floor(y)$
- $forall x in RR, forall n in ZZ, floor(x + n) = floor(x) + n$

== Représentation décimale

On note $DD$ l'ensemble des *nombres décimaux*, c'est à dire des réels $x$ tel qu'il existe $n in NN$ tel que $10^n x$ est entier.

Étant donné $n in NN$, on note $DD_n$ l'ensemble des décimaux tel que $10^n x in ZZ$.

Soit $x in RR, n in NN^*$, il existe un unique élément $y in D_n$ tel que $y_n <= x < y_n + 10^(-n)$.

- $y_n$ est appellé *valeur approchée décimale* à la précision $10^(-n)$ *par défaut*.
- $y_n + 10^(-n)$ est appellé *valeur approchée décimale* à la précision $10^(-n)$ *par excès*.

Pour tout $n in NN$, il existe $a_n in [|0, 9|]$ tel que $y_n - y_(n-1) = a_n/10^n$.

Soit $x in RR^+$, il existe pour tout $n in NN^*$, des entiers $a_n in [|0,9|]$ tel que :

- Il existe $n_0 in ZZ$ tel que $forall n <= n_0, a_n = 0$
- $ x = sum_(n = - infinity)^(+ infinity) a_n 10^(-n) = sum_(n = n_0)^0 a_n 10^(-n) + sum_(n = 1)^(+ infinity) a_n 10^(-n) = sum_(n = n_0)^0 a_n 10^(-n) + lim_(N -> + infinity) sum_(n = 1)^N a_n 10^(-n) $
- Sauf si pour tout $n in NN^*, a_n = 9$, on a alors :
$ floor(x) = sum_(n = n_0)^0 a_n 10^(-n) " et" " " sum_(n = 1)^N a_n 10^(-n) $

Soit $x in RR^*$, alors :

- Si $x$ n'est pas décimal, alors $x$ admet un unique développement décimal.
- Si $x$ est décimal, $x$ admet deux développements décimaux exactement, l'un terminant uniquement par des $9$, l'autre uniquement par des $0$.

On appelle *développement décimal propre* de $x$ l'unique développement de $x$ si $x$ n'est pas décimal, ou l'unique développement de $x$ terminant par des $0$ si $x$ est décimal. Ainsi, tout réel admet un unique développement décimal propre.

= Intervalles

== Description des intervalles

Soit $E$ un sous ensemble de $RR^n$, on dit que $E$ est *convexe* si et seulement si pour tout couple de points $A$ et $B$ de $E$, le segment $[A B]$ est entièrement inclus dans $E$.

Un *intervalle* $I$ de $RR$ est un sous-ensemble convexe $I$ de $RR$, c'est à dire tel que : $forall (a,b) in I^2, forall x in RR, a <= x <= b ==> x in I$

Tout intervalle $I$ de $RR$ est d'une des formes suivantes, pour certaines valeurs réelles $a$ et $b$ :

#grid(
    columns: (50%, 50%),
    {
      list(
        $[a, b] = {x in RR, a <= x <= b}, a <= b$,
        $]a, b[ = {x in RR, a < x < b}, a < b$,
        $[a, b[ = {x in RR, a <= x < b}, a < b$,
        $]a, b] = {x in RR, a < x <= b}, a < b$,
        $[a, + infinity[ = {x in RR, x >= a}$,
      )
    },
    {
      list(
        $]a, + infinity[ = {x in RR, x > a}$,
        $]- infinity, b] = {x in RR, x <= b}$,
        $]- infinity, b[ = {x in RR, x < b}$,
        $]- infinity, + infinity[ = RR$,
        $emptyset$,
      )
    }
)

On dit qu'un intervalle est :

- *ouvert* si il est de forme $]a, b[, ]a, + infinity[, ]- infinity, b[, RR "et" emptyset$
- *fermé* si il est de forme $[a, b], [a, + infinity[, ]- infinity, b], RR "et" emptyset$
- *semi-ouvert* si il est de forme $[a, b[ "et" ]a, b]$

== Intervalles et topologie

La notion d'intervalle est liée à la notion de topologie. On utilisera une brève introduction des ces notions dans $RR^n$, en utilisant la distance euclidienne canonique : $d(X,Y) = sqrt(sum^n_(i=1) (y_i-x_i)^2)$. Si $x, y in RR$, on a $d(x,y) = |x-y|$.


Soit $X in RR^n$ et $r in RR^+$, on a :
- On a la *boule ouverte* de centre $X$ et de rayon $r$ : B(X,r) = $circle(B)(X,r) = {Y in RR^n, d(X,Y) < r}$.
- On a la *boule fermée* de centre $X$ et de rayon $r$ : $overline(B)(X,r) = {Y in RR^n, d(X,Y) <= r}$.

Dans $RR$ les boules ouvertes et fermées sont des intervalles, $B(x,r) = ]x-r, x+r[$ et $overline(B)(x,r) = [x-r, x+r]$. De fait, _tout intervalle ouvert est une boule ouverte_, et _tout intervalle fermé est une boule fermée_. Soit $]a,b[ = B((a+b)/2,(a-b)/2)$ et $[a,b] = overline(B)((a+b)/2,(a-b)/2)$.

La majoration de certaines _valeurs absolue_ se traduit par l'_appartenance à une boule fermée_, ainsi $|x-a| <= r$ est équivalent à $x in overline(B)(a,r)$ et par l'_appartenance à une boule ouverte_, ainsi $|x-a| < r$ est équivalent à $x in B(a,r)$.

Soit $x in RR^n$, un *voisinage* de $x$ est un ensemble $V$ tel qu'il existe une boule ouverte centrée en $x$ et incluse dans $V$ :
$ exists epsilon > 0, B(x,epsilon) subset V, "i.e." exists epsilon > 0, forall y in E, d(x,y) < epsilon ==> y in V $ 

En gros, $V$ est un voisinage de $x$ si $x$ est à _l'intérieur_ de $V$, et non sur le bord.

Un *ouvert* $U$ de $RR^n$ est un sous ensemble $U$ de $RR^n$ tel que pour tout $x in U$, $U$ est un voisinage de $x$. $U in RR^n$ est ouvert ssi : $forall x in U, exists epsilon > 0, B(x,epsilon) subset U$.

Un sous-ensemble $F$ de $RR^n$ est _fermé_ si et seulement si _son complémentaire $C_E F$ est ouvert_.

On a :
- _Toute union quelconque d'ouverts est un ouvert_
- _Toute intersection _finie_ d'ouverts est un ouvert_
- _Toute intersection quelconque de fermés est un fermé_
- _Toute union _finie_ de fermés est un fermé_

On a les contre-exemples suivants :

- Pour une intersection infinie d'ouverts, on a $sect.big_(n=1)^(+ infinity) ]-1/n,1[ = [0,1[$
- Pour une union infinie de fermés, on a $union.big_(n=1)^(+ infinity) [1/n, 1] = ]0,1]$

= Droite achevée $overline(RR)$

La *droite achevée* $overline(RR)$ est l'ensemble $RR union {- infinity, + infinity}$.

On peut prolonger l'ordre de $RR$ à $overline(RR)$ en posant $- infinity <= x <= + infinity$ pour tout $x in overline(RR)$.

On peut prolonger partiellement les opérations $+$ et $times$ à $overline(RR)$ en posant :

- $- (+ infinity) = - infinity$
- $forall x in overline(RR)\\{- infinity}, x + (+ infinity) = + infinity$
- $forall x in overline(RR)\\{+ infinity}, x + (- infinity) = - infinity$
- $1/(+ infinity) = 1/(- infinity) = 0$
- $forall x in overline(RR)^*_+, x times (+ infinity) = + infinity, x times (- infinity) = - infinity$
- $forall x in overline(RR)^*_-, x times (+ infinity) = - infinity, x times (- infinity) = + infinity$

#emoji.warning *Attention* : Il existe certaines opérations qui ne sont pas définies, et définissent les _formes indéterminées_ de la somme et du
produit : $- infinity + (+ infinity), 0 times (+infinity) "et" 0 times (- infinity)$

On peut étendre la _propriété fondamentale de $RR$_ dans $overline(RR)$, ainsi _tout sous ensemble de $overline(RR)$ admet une borne supérieure dans $overline(RR)$_. On a aussi _tout sous ensemble de $overline(RR)$ admet une borne inférieure dans $overline(RR)$_.

// Do not touch
#block(height: 400pt)