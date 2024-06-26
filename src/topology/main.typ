#import "../theme.typ": definition, comment

= Topology

#definition("Topology")[
    Let $X$ bet a set. A *topology over $X$* is a subset $#sym.Sigma$ of $2^X$ such that:
    1. $A #sym.subset.eq #sym.Sigma ==> union.big_(E #sym.in A) E$. #comment[Infinite or finite unions of sets].
    2. $A, B #sym.in #sym.Sigma ==> A #sym.sect B #sym.in #sym.Sigma$. #comment[Finite intersections of sets].
    3. $X #sym.in #sym.Sigma$
]<topology>

#definition("Topological Space")[
    $(X,#sym.Sigma)$ is a *topological space* iff. $#sym.Sigma$ is a #link(<topology>)[topology] of $X$.
]<topological-space>

#definition("Everywhere dense")[
    Let $(X,#sym.Sigma)$ #link(<topological-space>)[topological space], and $H #sym.subset.eq X$. $H$ is said *everywhere dense in $#sym.Sigma$* iff. $#sym.forall E #sym.in #sym.Sigma, E != #sym.emptyset : H #sym.sect E = #sym.emptyset$. #comment[We can find a bit of $H$ in every corner of the topology $#sym.Sigma$].
]<everywhere-dense>

#definition("Separable")[
    Let $(X,#sym.Sigma)$ be a #link(<topological-space>)[topological space]. $(X,#sym.Sigma)$ is said *separable* iff $#sym.exists H #sym.subset.eq X, H " is countable " : H#text[ is #link(<everywhere-dense>)[everywhere dense] ]#sym.in #sym.Sigma$. #comment[There is a sequence of elements ${x_n #sym.in X}_(n=1)^(#sym.oo)$ such that every set in the topology contains at least one element $x_i$].
]<separable>

#definition("Metric Space")[
    $(X,d)$ is a *metric space* iff.
    1. $X != #sym.emptyset$
    2. $d:X times X --> RR_(>=0)$ such that #comment[(d is a distance)]:
        1. $forall x,y in X: d(x,y) = 0 ==> x = y$. #comment[there are no different elements at zero-distance].
        3. $forall x,y in X: d(x,y) = d(y,x)$. #comment[symmetry].
        2. $forall x,y,z in X: d(x,z) <= d(x,y) + d(y,z)$. #comment[triangular inequality].
]<metric-space>

#definition(text()[open $epsilon$-ball])[
    Let $(X,d)$ be a #link(<metric-space>)[metric space], $x in X$, and $epsilon in RR_(>0)$. We call $B_(epsilon)(x)={y in X | d(x,y) < epsilon}$ an *open $epsilon$-ball*. #comment[A ball of #sym.epsilon radius centered at some point].
]<open-epsilon-ball>

#definition("Neighborhood")[
    Let $(X,d)$ be a #link(<metric-space>)[metric space], $S subset.eq X$, $x in S$, and $epsilon in RR_(>0)$ such that the #link(<open-epsilon-ball>)[open #text[#sym.epsilon]-ball] $B_(epsilon)(x) subset.eq S$. Then S is said a *neighborhood of $x$*. #comment[A neighborhood of an element is simply a set that contains an open ball containing the element].
]<neighborhood>

#definition("Open Set")[
    Let $(X,d)$ be a #link(<metric-space>)[metric space] and $U subset.eq X$. $U$ is an *open set* iff. $forall u in U : exists epsilon in RR_(>0) : #link(<open-epsilon-ball>)[$B_(epsilon)(u)$] subset.eq U$. #comment[An open set is simply a set which is also neighborhood for all its points].
]<open-set>

#definition("Induced Topology")[
    Let $(X,d)$ be a #link(<metric-space>)[metric space]. $Sigma$ is said an *induced topology* iff. $Sigma={U subset.eq X | U #text[ is an #link(<open-set>)[open set] in ] (X,d)}$
]<induced-topology>

#definition("Metrizable")[
    Let $(X,Sigma)$ be a #link(<topological-space>)[topological space]. $(X,Sigma)$ is said *metrizable* iff. $exists (X,d) #text[ #link(<metric-space>)[metric space] ]: Sigma #text[ is a #link(<induced-topology>)[topology induced] by ] (X,d) $.
]<metrizable>

#definition("Cauchy Sequence")[
    Let $(X,d)$ be a #link(<metric-space>)[metric space], $[x_n in X]$ a sequence. $[x_n]$ is said a *cauchy sequence* iff. $forall epsilon in RR_(>0) : exists N in NN : forall m,n in NN : d(x_n,x_m) <= epsilon$. #comment[There is a point after which all pairs of elements are close to each other].
]<cauchy-sequence>

#definition("Convergent Sequence")[
    Let $(X,d)$ be a #link(<metric-space>)[metric space], $l in X$, $[x_n in X]$ a sequence. $[x_n]$ is said a *convergent sequence to the limit $l$* iff. $forall epsilon in RR_(>0) : exists N in RR_(>0) : forall n > N : d(x_n,l) < epsilon$. If such a limit exists the sequence is simply said *convergent*.
]<convergent-sequence>

#definition("Complete Metric Space")[
    Let $(X,d)$ be a #link(<metric-space>)[metric space]. $(X,d)$ is said a *complete metric space* iff. every #link(<cauchy-sequence>)[cauchy sequence] is #link(<convergent-sequence>)[convergent].
]<complete-metric-space>

#definition("Polish Space")[
    Let $(X,Sigma)$ be a #link(<topological-space>)[topological space]. $(X,Sigma)$ is said a *Polish Space* iff. $(X,Sigma)$ is #link(<separable>)[separable], #link(<metrizable>)[metrizable], and a #link(<complete-metric-space>)[complete metric space] for some #link(<measure>)[metric].
]<polish-space>


