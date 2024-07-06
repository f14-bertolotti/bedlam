#import "../theme.typ" : comment, definition

= Abstract Algebra

#let monoid = (
    tag : link(<monoid>)[monoid]
)
#definition("monoid")[
    $(X, dot.c:X times X --> X)$ is a *monoid* iff.
    1. $forall a,b,c in X: a dot.c (b dot.c c) = (a dot.c) b dot.c c$. #comment[Associativity].
    2. $exists e in X: forall a in X: e dot.c a = a dot.c e = a$. #comment[Identity element].

]<monoid>

#let semiring = (
    tag : link(<semiring>)[semiring]
)
#definition("semiring")[
    $(X,+:X times X-->X,dot.c:X times X-->X)$ is a *semiring* iff.
    1. $(X,+)$ is a #monoid.tag with identity element $0$.
    2. $(X,dot.c)$ is #monoid.tag with identity element $1$.
    3. $+$ is commutative.
    4. $a dot.c 0 = 0 and 0 dot.c a = 0$. #comment[$dot.c$ is annihilated by the identity element of $+$].
    5. $a dot.c (b + c) = a dot.c b + a dot.c c and (b + c) dot.c a = b dot.c a + c dot.c a$. #comment[$dot.c$ distributes over $+$].
]<semiring>

