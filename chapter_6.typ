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

// Do not touch
#block(height: 400pt)