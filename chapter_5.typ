#set page(header: box(width: 100%, grid(
  columns: (100%),
  rows: (20pt, 8pt),
  align(right, text("CHAPITRE 3. COMBINATOIRE")),
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
#set math.vec(delim:"(")

#let titleBox(title) = align(center, block(below: 50pt, box(height: auto, fill: rgb("#eeeeee"), width: auto, inset: 40pt, text(title, size: 20pt, weight: "bold"))))

#titleBox("Combinatoire")

= Cardinaux des ensembles finis

== Ensembles finis et cardinaux

On dit que $E$ et $F$ ont le même cardinal s'il existe une bijection de $E$ vers $F$, on note $|E| = |F|$.

On dit que $E$ est *fini* s'il existe un entier $n$ et une surjection $f : [|1,n|] ->> E$ (ou une injection $g : E arrow.hook [|1,n|]$).

Si $E$ est fini, et que $F subset E$, alors $F$ est fini aussi.

Tout sous-ensemble $E$ de $[|1,n|]$ peut être mis en bijection avec $[|1,p|]$ pour un $p <= n$.

Soit $n, m in NN$, si il existe une bijection de $[|1,n|]$ vers $[|1,m|]$, alors $n = m$.

== Règles de calcul sur les cardinaux

On a $A subset E$, ainsi $|A| = sum_(k in E) bb(1)_A (k)$

On a $A_1, ..., A_n$ des ensembles finis 2 à 2 disjoints, alors $|A_1 union ... union A_n| = |A_1| + ... + |A_n|$

On a $A subset B$, alors $|C_B A| = |B| - |A|$ et $|A| <= |B|$ avec égalité si et seulement si $A = B$

On a $A subset B$, alors $|A times B| = |A| times |B|$

On a la *formule du crible de Poincaré* : 
$ |A_1 union ... union A_n| = sum_(k = 1)^n (-1)^(k-1) (sum_(i <= i_1 <= ... <= i_k <= n) |A_i sect ... sect A_i_k|) = sum_(I subset [|1,n|] \ I != emptyset) (-1)^(|I|-1) |sect.big_(i in I) A_i| $

On a $A_1, ..., A_n$ des ensembles finis, alors $|A_1 times ... times A_n| = |A_1| times ... times |A_n|$

== Comparaison de cardinaux en cas d'injectivité ou de surjectivité

On a $f : E -> F$ une application :
- si $f$ est injective, alors $|E| <= |F|$
- si $f$ est surjective, alors $|E| >= |F|$
- si $f$ est bijective, alors $|E| = |F|$

On a $|E|=|F|$, et $f : E -> F$, ainsi les propriétés suivantes sont équivalentes :

- $f$ est injective
- $f$ est surjective
- $f$ est bijective

= Combinatoire

== Combinatoire des ensembles d'applications

On rappelle que $E^F$ est l'ensemble des applications de $F$ vers $E$. On a $|E^F| = |E|^(|F|)$.

Une *p-liste* d'éléments de $F$ (ou *p-uplet*) est un élément $(x_1, .., x_p)$ de $F^p$.

Le nombre de p-listes d'éléments de $F$ est $|F|^p$.

On a $|P(E)| = 2^(|E|)$

*Lemme du berger* : Soit $f : E -> F$, on suppose qu'il existe un entier $k in NN^*$ tel que pour tout $y in F$, $|f^(-1)({y})| = k$. Alors $|E| = k times |F|$.

Soit $A$ et $B$ tel que $|A| = p$ et $|B| = n$, alors si $p<=n$ le nombre d'injections de $A$ vers $B$ est $A^p_n = n!/(n-p)!$. Si $p>n$, alors $A^p_n = 0$.

Soit $|F| = n$ et $p<=n$, le nombre de p-listes d'éléments distincts de $F$ (ou *p-arrangements*) est $A^p_n = n!/(n-p)!$

Soit $E$ un ensemble fini, $|frak(S) E| = |E|!$ et $|S_n|=n!$

== Combinatoire de sous ensembles

Soit $E$ et $F$ deux ensembles de même cardinal, alors $|P_k (E)| = |P_k (F)|$.

Le *coefficent binomial* $vec(n,k)$ est le nombre de parties à $k$ éléments de $[|1,n|]$. On a $vec(n,k) = n!/(k!(n-k)!)$.

Soit $(n,k) in NN times ZZ$,
- Si $n>=0$, et $k in.not [|0,n|], vec(n,k)=0$
- Si $n>=0,$
  - $vec(n,0) = vec(n,n) = 1$

  - $vec(n,1) = vec(n,n-1) = n$

  - $vec(n,2) = vec(n,n-2) = (n(n-1))/2$

Pour tout $(n,k) in ZZ^2$, on a :

- $vec(n,k) = vec(n,n-k)$ (symétrie)

- $k vec(n,k) = n vec(n-1,k-1)$ (formule du comité-président)

- $vec(n,k) = vec(n-1,k-1) + vec(n-1,k)$ (formule de Pascal)

*Formule du binôme de Newton* : Soit $n in NN$ et $a, b in RR$, alors $(a+b)^n = sum_(k = 0)^n vec(n,k) a^(n-k) b^k$

= Bijection, Déesse de la Combinatoire

Pour montrer que deux ensembles ont le même cardinal, on peut montrer qu'il existe une bijection entre les deux.

= Preuves combinatoires d'identités

Pour démontrer _combinatoirement_ :

+ Il faut trouver un modèle adapté à la formule, soit un ensemble d'objets dont le dénombrement est égal à celui d'un des membres de l'égalité. Il faut s'aider du membre le plus simple de l'égalité.

+ Dénombrer cet ensemble de 2 façons différentes. On procède d'une part à un dénombrement après un tri (soit une partition de l'ensemble) se traduisant par une somme, et d'autre part à un dénombrement en comptant les objets un par un.

#emoji.warning Évidemment on ne fait ça que sur des entiers au risque d'avoir des petits soucis.

On a les formules suivantes :

- $sum_(k = 0)^n vec(n,k) = 2^n$

- $sum_(k = 0)^n vec(N,k) vec(M,n-k) = vec(N+M,n)$ (*Vandermonde*)

- $sum_(k = 0)^p vec(n+k,n) = vec(n+p+1,n+1)$ (*Sommation sur une colonne*)

Un signe $(-1)^k$ correspond à une comparaison de parités de cardinaux. On peut passer d'un cardinal pair à un cardinal import avec la différence symétrique ($ Delta$) avec un ${x}$ soit $X |-> X Delta {x}$. C'est le *principe de l'interrupteur*.