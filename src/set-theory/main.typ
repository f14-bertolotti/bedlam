#import "../theme.typ": definition, proof, proposition

= Set Theory

#let cover = (
    tag : link(<cover>)[cover]
)
#definition("cover")[
    Let $A$ be a set. 
    A collection of sets $cal(C)$ is a *cover of $S$* iff.
    $A subset.eq union.big_(C in cal(C)) C$
]<cover>

#proposition("unions as disjoint unions")[
    Let ${A_n}_(n in NN)$ be a sequence of sets.
    Let ${A'_n}_(n in NN)$ be a sequence of set such that $A'_n = A_n without A_1 without dots without A_(n-1)$.
    Then $union.big_(n in NN) A_n = union.big_(n in NN) A'_n$ and ${A'_n}_(n in NN)$ are pairwise disjoint. 
]<unions-as-disjoint-unions>

#proof(text[of @unions-as-disjoint-unions])[
    1. Let us show that $union.big_(n in NN) A_n = union.big_(n in NN) A_n$:
        $ 
            union.big_(n in NN) A_n &= A_1 union A_2 union A_3 union dots \
                                    &= A_1 union (A_2 without A_1) union (A_3 without A_1 without A_2) union dots \
                                    &= A'_1 union A'_2 union A'_3 union dots \
                                    &= union.big_(n in NN) A'_n
        $
    2. Let us show that ${A'_n}_(n in NN)$ are pairwise disjoint. Consider $A'_a$ and $A'_b$ where, without loss of genrality, a < b. Then $A'_a sect A'_b = nothing$ since $A'_b$ results from $A_b$ without $A_a$ (among other sets) and $A'_a subset.eq A_a$
]


