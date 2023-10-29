#set page(header: box(width: 100%, grid(
  columns: (100%),
  rows: (20pt, 8pt),
  align(right, text("CHAPITRE 4. SOMMES")),
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

#titleBox("Sommes")

= Manipulation des signes $sum$ et $product$

== Définition des notations

Soit $I$ un ensemble fini et $(a_i)_(i in I)$ une famille de nombres réels ou complexes.

- On note $sum_(i in I) a_i$ la somme des $a_i$ pour $i in I$.

- On note $product_(i in I) a_i$ le produit des $a_i$ pour $i in I$.

- Lorque $I = [|n,m|]$, avec $n <= m$, on note $sum_(i = n)^m a_i$ la somme des $a_i$ pour $i in [|n,m|]$.

On dit que $i$ une variable muette, il est donc possible de remplacer $i$ par une autre lettre. Cependant, il est impossible de remplacer $i$ par une lettre déjà utilisée dans la somme.

Si $I = emptyset$, alors par convention $sum_(i in I) a_i = 0$ et $product_(i in I) a_i = 1$.

On définit la *factorielle* de $n$ par $n! = product_(k = 1)^n k$.

== Changements d'indice

On a $I$ et $J$ deux ensembles finis, et $f : I ->^(approx) J$ une bijection, alors $sum_(j in J) a_j = sum_(i in I) a_(f(i))$. (On peut remplacer $sum$ par $product$).

Il est aussi possible de translater l'indice, c'est-à-dire de remplacer $i$ par $i - l$. On a alors $sum_(i = n)^m a_i = sum_(i = n - l)^(m-l) a_(i + l)$.

== Sommation par groupement de termes

On suppose $I = I_1 union.plus I_2$, avec $I$ fini, ainsi $sum_(i in I) a_i = sum_(i in I_1) a_i + sum_(i in I_2) a_i$.

On peut ainsi généraliser à $n$ ensembles $I_1, I_2, ..., I_n$, avec $I = I_1 union.plus I_2 union.plus ... union.plus I_n$, on a alors $sum_(i in I) a_i = sum_(i in I_1) a_i + sum_(i in I_2) a_i + ... + sum_(i in I_n) a_i = sum_(k = 1)^n sum_(i in I_k) a_i$.

== Linéarité

Soit $lambda$ et $mu$ deux nombres réels ou complexes, alors on a $sum_(i in I)a_i + sum_(i in I)b_i = sum_(i in I) (a_i + b_i)$ et $lambda sum_(i in I) a_i = sum_(i in I) lambda a_i$.

Ainsi on en déduit $sum_(i in I) (lambda a_i + mu b_i) = lambda sum_(i in I) a_i + mu sum_(i in I) b_i$.

On a $E$ un ensemble fini, et $a$ un nombre réel ou complexe, alors $sum_(i in I) a = |E| times a$.

== Sommes télescopiques

On dit que $sum_(k=0)^n a_k$ est une somme télescopique si $a_k = b_(k+1) - b_k$.

On a alors $sum_(k=0)^n a_k = sum_(k=0)^n (b_(k+1) - b_k) = b_(n+1) - b_0$.

== Cas des produits

- Si $I_1 sect I_2 = emptyset$, alors $product_(i in I_1) a_i times product_(i in I_2) a_i = product_(i in I_1 union.plus I_2) a_i$

- Si $(product_(i in I) a_i)^lambda (product_(i in I) b_i)^mu = product_(i in I) (a_i)^lambda (b_i)^mu$

- $product_(i in I) a = a^(|I|)$

On dit que $product_(k=0)^n a_k$ est une produit télescopique si $a_k = b_(k+1) / b_k$.

On a alors $product_(k=0)^n a_k = product_(k=0)^n (b_(k+1) / b_k) = b_(n+1) / b_0$.

== Sommes multiples

Certaines sommes sont indexées sur un produit cartésien.

Ainsi on a $K subset I times J$,

- Soit $i in I$, on définit la *coupe de $K$ suivant $i$* : $K_(i,circle.filled.small) = {j in J | (i,j) in K}$

- Soit $j in J$, on définit la *coupe de $K$ suivant $j$* : $K_(circle.filled.small,j) = {i in I | (i,j) in K}$

On définit aussi $K'_(i,circle.filled.small) = {(i,j) | j in K_(i,circle.filled.small)}$ et $K'_(circle.filled.small,j) = {(i,j) | i in K_(circle.filled.small,j)}$.

On a l'inversion des signes sommes, ainsi :

$ sum_((i,j) in K) a_(i,j) = sum_(i in I) sum_(j in K_(i,circle.filled.small)) a_(i,j) = sum_(i in I) sum_((i,j) in K'_(i,circle.filled.small)) a_(i,j) = sum_(j in J) sum_(i in K_(circle.filled.small,j)) a_(i,j) = sum_(j in J) sum_((i,j) in K'_(circle.filled.small)) a_(i,j) $

Si $K = I times J$ on a $K_(i,circle.filled.small) = J$ et $K_(circle.filled.small,j) = I$, ainsi $ sum_((i,j) in I times J) a_(i,j) = sum_(i in I) sum_(j in J) a_(i,j) = sum_(j in J) sum_(i in I) a_(i,j) "(somme sur un pavé)" $

On a aussi $sum_(i=0)^(n) sum_(j=i)^(n) a_(i,j) = sum_(j=0)^n sum_(i=0)^j a_(i,j) "(somme sur un triangle)" $

== Produits de sommes

On a $(sum_(i in I) a_i) (sum_(j in J) b_j) = sum_(i in I) sum_(j in J) a_i b_j = sum_((i,j) in I times J) a_i b_j$

#emoji.warning Il est important de rentre les indices idépendants comme dit précédemment.

*Théorème de distributivité généralisé* : On a : $ product_(k = 1)^n (sum_(i=1)^(m_k) a_(k,i)) = sum_((i_1,...,i_n) in [|1, m_1|] times ... times [|1,m_n|]) a_(1,i_1) a_(2,i_2) ... a_(n,i_n) $

= Sommes classiques à connaître

== Sommes de puissances d'entiers

- $sum_(k=1)^n k^0 = sum_(k=1)^n 1 = n$

- $sum_(k=1)^n k = (n(n+1))/2$

- $sum_(k=1)^n k^2 = (n(n+1)(2n+1))/6$

- $sum_(k=1)^n k^3 = ((n(n+1))/2)^2$

== Sommes géométriques

On a $a$ et $b$ deux nombres réels ou complexes, et $n in NN$, ainsi :

- $a^n - b^n = (a-b) sum_(k=0)^(n-1) a^(n-1-k) b^k$

- Si $b=1$, $a^n - 1 = (a-1) sum_(k=0)^(n-1) a^k$

- Si $n$ est impair, on a $a^n + b^n = (a+b) sum_(k=0)^(n-1) (-1)^k a^(n-1-k) b^k$

Soit $x$ un nombre réel ou complexe, on a $sum_(k=0)^n x^k = cases(
    n+1 "si" x = 1,
    (1 - x^(n+1)) / (1-x) "sinon"
    )$