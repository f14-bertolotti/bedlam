#import "../theme.typ": proof, proposition, definition, example, comment

== Lebesgue Measure

#definition("pre-measure")[
    Let $(X, Sigma)$ such that $nothing in S$. Let $mu:S --> R_(>=0) + {+oo}$. $mu$ is said a *pre-measure* iff.
    1. $mu(nothing) = 0$.
    2. Given a collection of pairwise disjoint sets ${A_n in S}_(n in NN)$ such that $union.big_(n in NN) A_n in S ==> mu(union.big_(n in NN) A_n) = sum_(n in NN) mu(A_n)$.
    3. $forall A in S: mu(A) >= 0$.
]<pre-measure>
#show "pre-measure" : link(<pre-measure>)[pre-measure]

A pre-measure is a precursor of a full-fledge measure. The main difference is that a measure is defined on sigma algebras, meanwhile the pre-measure is defined on a simple collection of subsets. Further, given that this collection is not necessarily closed under unions as a sigma algebra does, we also need to check that, in the second requirement, the union of $A_n$ is indeed contained in the collection.

#definition("Lebesgue pre-measure")[
    The *Lebesgue pre-measure* is a mapping $lambda^n:cal(I)^n_h --> RR_(>=0) union {+oo}$ #comment[($cal(I)^n_h$ denotes the set half open rectangle)] such that $lambda^n (times.big_(i=1)^(n) [a_i, b_i)) = product_(i=1)^n (b_i-a_i)$ for $a_i,b_i in RR$ and $a_i <= b_i$.
]<lebesgue-pre-measure>
#show "Lebesgue pre-measure" : link(<lebesgue-pre-measure>)[Lebesgue pre-measure]

#proposition[
    The Lebesgue pre-measure is a pre-measure.
]<lebesgue-pre-measure-is-a-pre-measure>

#proof(text[of Proposition @lebesgue-pre-measure-is-a-pre-measure])[
    1. $lambda^n (nothing) = lambda^n (times.big_(i=1)^n [a_i, a_i)) = product_(i=1)^n (a_i - a_i) = 0$
    2. #grid(
            columns: (1fr,1fr),
            gutter: 1cm,
            text[
                Let $I = times.big_(i=1)^n [a_i, b_i)$ and $I' = times.big_(i=1)^n [a'_i, b'_i)$ be disjoint half open rectangles.
                The $I union I'$ belongs to $cal(I)^n_h$ if we can stitch one to the other. This can only happen if there is an $i$ such that:
                1. $j  = i ==> b_j = a'_j$.
                2. $j != i ==> b_j = b'_j$.
                3. $j != i ==> a_j = a'_j$.
                This can be intuitively visualized in @stitched-rectangles where two 2-dimensional half open rectangles met at one side. 
                The only difference between the rectangles is that one is shifted along a single dimension, in such a way that they met at the open and close edges.


            ],
            text[#figure(caption:text[Two half open rectangles that can be stitched together.])[#include "figs/stitched-rectangles.typ"]<stitched-rectangles>]
        )
        In this situation we have that:
        $ lambda^n (I) + lambda^n (I') =& product_(j=1)^n (b_j - a_j) + product(j=1)^n (b'_j, a'_j)         && #comment[Lebesgue  pre-measure definition] \
                                       =& ((b_i - a_i) + (b'_i - a'_i)) product_(j = 1 \ j != i)^n b_j-a_j  && #comment[factoring out $product_(j = 1 \ j != i)^n b_j-a_j$] \
                                       =& ((b_i - a'_i)) product_(j = 1 \ j != i)^n b_j-a_j                 && #comment[stitching  half open rectangles together] \
                                       =& lambda^n (I union I')
        $
        Thus it is verified that $lambda^n$ is finitely additive. 

    3. The $forall E in cal(I)^n_h: lambda^n (E) >= 0$ since the product of positive terms is positive.
]

