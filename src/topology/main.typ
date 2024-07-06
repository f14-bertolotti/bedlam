#import "../theme.typ": definition, comment

= Topology

#let topology = (
    tag : link(<topology>)[topology] 
)
#definition("Topology")[
    Let $X$ bet a set. A *topology over $X$* is a subset $#sym.Sigma$ of $2^X$ such that:
    1. $A subset.eq Sigma ==> union.big_(E in A) E$. #comment[Infinite or finite unions of sets].
    2. $A, B in Sigma ==> A sect B in Sigma$. #comment[Finite intersections of sets].
    3. $X in Sigma$
]<topology>

#let topological-space = (
    tag : link(<topological-space>)[topological space]
)
#definition("Topological Space")[
    $(X,Sigma)$ is a *topological space* iff. #sym.Sigma is a #topology.tag of $X$.
]<topological-space>

#let everywhere-dense = (
    tag : link(<everywhere-dense>)[everywhere dense]
)
#definition("Everywhere dense")[
    Let $(X,Sigma)$ #topological-space.tag, and $H subset.eq X$. $H$ is said *everywhere dense in #sym.Sigma * iff. $forall E in Sigma, E != emptyset : H sect E = emptyset$. #comment[We can find a bit of $H$ in every corner of the #topology.tag #sym.Sigma].
]<everywhere-dense>

#let separable = (
    tag : link(<separable>)[separable]
)
#definition("Separable")[
    Let $(X,Sigma)$ be a #topological-space.tag. $(X,Sigma)$ is said *separable* iff it exists $H subset.eq X$, such that $H$ is countable and $H$ is #everywhere-dense.tag in $Sigma$. #comment[There is a set of elements ${x_n #sym.in X}_(n=1)^(#sym.oo)$ such that every set in the topology contains at least one them].
]<separable>

#let metric-space = (
    tag : link(<metric-space>)[metric space]
)
#definition("Metric Space")[
    $(X,d)$ is a *metric space* iff.
    1. $X != nothing$
    2. $d:X times X --> RR_(>=0)$ such that #comment[(d is a distance)]:
        1. $forall x,y in X: d(x,y) = 0 ==> x = y$. #comment[there are no different elements at zero-distance].
        3. $forall x,y in X: d(x,y) = d(y,x)$. #comment[symmetry].
        2. $forall x,y,z in X: d(x,z) <= d(x,y) + d(y,z)$. #comment[triangular inequality].
]<metric-space>

#let open-epsilon-ball = (
    tag : link(<open-epsilon-ball>)[open $epsilon$-ball],
    sym : center => link(<open-epsilon-ball>)[$B_(epsilon)(#center)$]
)
#definition(text()[open $epsilon$-ball])[
    Let $(X,d)$ be a #metric-space.tag, $x in X$, and $epsilon in RR_(>0)$. We call $#(open-epsilon-ball.sym)("x")={y in X | d(x,y) < epsilon}$ an *open $epsilon$-ball*. #comment[A ball of #sym.epsilon radius centered at some point].
]<open-epsilon-ball>

#let neighborhood = (
    tag : link(<neighborhood>)[neighborhood]
)
#definition("Neighborhood")[
    Let $(X,d)$ be a #metric-space.tag, $S subset.eq X$, $x in S$, and $epsilon in RR_(>0)$ such that $#(open-epsilon-ball.sym)("x") subset.eq S$. Then S is said a *neighborhood of $x$*. #comment[A neighborhood of an element is simply a set that contains an open ball containing the element].
]<neighborhood>

#let open-set = (
    tag : link(<open-set>)[open-set]
)
#definition("Open Set")[
    Let $(X,d)$ be a #metric-space.tag and $U subset.eq X$. $U$ is an *open set* iff. $forall u in U : exists epsilon in RR_(>0) : #(open-epsilon-ball.sym)("u") subset.eq U$. #comment[An open set is simply a set which is also neighborhood for all its points].
]<open-set>

#let induced-topology = (
    tag : link(<induced-topology>)[induced topology]
)
#definition("Induced Topology")[
    Let $(X,d)$ be a #metric-space.tag. $Sigma$ is said an *induced topology* iff. $Sigma={U subset.eq X | U$ is an #open-set.tag in $(X,d)}$
]<induced-topology>

#let metrizable = (
    tag : link(<metrizable>)[metrizable]
)
#definition("Metrizable")[
    Let $(X,Sigma)$ be a #topological-space.tag. $(X,Sigma)$ is said *metrizable* iff. it exists $(X,d)$ #metric-space.tag such that $Sigma$ is the #induced-topology.tag by $(X,d)$.
]<metrizable>

#let cauchy-sequence = (
    tag : link(<cauchy-sequence>)[cauchy sequence]
)
#definition("Cauchy Sequence")[
    Let $(X,d)$ be a #metric-space.tag, $[x_n in X]$ a sequence. $[x_n]$ is said a *cauchy sequence* iff. $forall epsilon in RR_(>0) : exists N in NN : forall m,n in NN : d(x_n,x_m) <= epsilon$. #comment[There is a point after which all pairs of elements are close to each other].
]<cauchy-sequence>

#let convergent-sequence = (
    tag : link(<convergent-sequence>)[convergent sequence]
)
#definition("Convergent Sequence")[
    Let $(X,d)$ be a #metric-space.tag, $l in X$, $[x_n in X]$ a sequence. $[x_n]$ is said a *convergent sequence to the limit $l$* iff. $forall epsilon in RR_(>0) : exists N in RR_(>0) : forall n > N : d(x_n,l) < epsilon$. If such a limit exists the sequence is simply said *convergent*.
]<convergent-sequence>

#let complete-metric-space = (
    tag : link(<complete-metric-space>)[complete metric space]
)
#definition("Complete Metric Space")[
    Let $(X,d)$ be a #metric-space.tag. $(X,d)$ is said a *complete metric space* iff. every #cauchy-sequence.tag is a #convergent-sequence.tag.
]<complete-metric-space>

#let polish-sapce = (
    tag : link(<polish-space>)[polish space]
)
#definition("Polish Space")[
    Let $(X,Sigma)$ be a #topological-space.tag. $(X,Sigma)$ is said a *Polish Space* iff. $(X,Sigma)$ is #separable.tag, #metrizable.tag, and a #complete-metric-space.tag for some metric.
]<polish-space>

