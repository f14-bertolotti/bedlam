#import "introduction.typ": *
#import "../notation/main.typ": extension, restriction
#import "../theme.typ": proof, proposition, theorem, definition, example, comment

== Lebesgue Measure

#let pre-measure = (
    tag : link(<pre-measure>)[pre-measure]
)
#definition("pre-measure")[
    Let $(X, Sigma)$ be a #set-algebra.tag. Let $mu:S --> R_(>=0) union {+oo}$. $mu$ is said a *pre-measure* iff.
    1. $mu(nothing) = 0$. #comment[Empty set].
    2. Given a collection of pairwise disjoint sets ${A_n in S}_(n in NN)$ such that $union.big_(n in NN) A_n in S ==> mu(union.big_(n in NN) A_n) = sum_(n in NN) mu(A_n)$. #comment[Countable additivity].
    3. $forall A in S: mu(A) >= 0$. #comment[Positiveness].
]<pre-measure>

A #pre-measure.tag is a precursor of a full-fledge #measure.tag. The main difference is that a #measure.tag is defined on #text[#sigma-algebra.tag]s, meanwhile the #pre-measure.tag is defined on a simple collection of subsets. Further, given that this collection is not necessarily closed under unions as a #sigma-algebra.tag does, we also need to check that, in the second requirement, the union of $A_n$ is indeed contained in the collection.

#let outer-measure = (
    tag : link(<outer-measure>)[outer measure]
)
#definition("Outer measure")[
    Let $X$ be a set. An *outer measure* $mu: X --> RR_(>=0) union {oo}$ such that:
    1. $mu(nothing) = 0$. #comment[empty set].
    2. $forall A,B in 2^X: A subset.eq B ==> mu(A) <= mu(B)$. #comment[Monotonicity].
    3. $forall {A_n in 2^X}_(n in NN): mu(union.big_(n in NN) A_n) <= sum_(n in NN) mu(A_n)$. #comment[Countable subadditivity].
]<outer-measure>

An #text[#outer-measure.tag]s are weaker wrt. #text[#measure.tag]s as they are only countably subadditive rather than countably additive. However, they are able to measure all subset of $X$ rather than only a #text[#sigma-algebra.tag]s.

#let lebesgue-pre-measure = (
    tag : link(<lebesgue-pre-measure>)[Lebesgue pre-measure],
    sym : n => link(<lebesgue-pre-measure>)[$lambda^(#n)$]
)
#definition("Lebesgue pre-measure")[
    The *Lebesgue pre-measure* is a mapping $#(lebesgue-pre-measure.sym)("n") :#(half-open-rectangle.sym)("n") --> RR_(>=0) union {+oo}$ #comment[(#(half-open-rectangle.sym)("n") denotes the set half open rectangle)] such that $#(lebesgue-pre-measure.sym)("n") (times.big_(i=1)^(n) [a_i, b_i)) = product_(i=1)^n (b_i-a_i)$ for $a_i,b_i in RR$ and $a_i <= b_i$.
]<lebesgue-pre-measure>

#proposition[
    The Lebesgue pre-measure is a pre-measure.
]<lebesgue-pre-measure-is-a-pre-measure>

#proof(text[of Proposition @lebesgue-pre-measure-is-a-pre-measure])[
    1. $#(lebesgue-pre-measure.sym)("n") (nothing) = #(lebesgue-pre-measure.sym)("n") (times.big_(i=1)^n [a_i, a_i)) = product_(i=1)^n (a_i - a_i) = 0$
    2. #grid(
            columns: (1fr,1fr),
            gutter: 1cm,
            text[
                Let $I = times.big_(i=1)^n [a_i, b_i)$ and $I' = times.big_(i=1)^n [a'_i, b'_i)$ be disjoint #text[#half-open-rectangle.tag]s.
                The $I union I'$ belongs to #(half-open-rectangle.sym)("n") if we can stitch one to the other. This can only happen if there is an $i$ such that:
                1. $j  = i ==> b_j = a'_j$.
                2. $j != i ==> b_j = b'_j$.
                3. $j != i ==> a_j = a'_j$.
                This can be intuitively visualized in @stitched-rectangles where two 2-dimensional half open rectangles met at one side. 
                The only difference between the rectangles is that one is shifted along a single dimension, in such a way that they met at the open and close edges.


            ],
            text[#figure(caption:text[Two half open rectangles that can be stitched together.])[#include "figs/stitched-rectangles.typ"]<stitched-rectangles>]
        )
        In this situation we have that:
        $ #(lebesgue-pre-measure.sym)("n") (I) + #(lebesgue-pre-measure.sym)("n") (I') = & product_(j=1)^n (b_j - a_j) + product_(j=1)^n (b'_j, a'_j)       && #comment[#lebesgue-pre-measure.tag definition] \
                                       =                                                 & ((b_i - a_i) + (b'_i - a'_i)) product_(j = 1 \ j != i)^n b_j-a_j && #comment[factoring out $product_(j = 1 \ j != i)^n b_j-a_j$] \
                                       =                                                 & ((b_i - a'_i)) product_(j = 1 \ j != i)^n b_j-a_j                && #comment[stitching #text[#half-open-rectangle.tag]s together] \
                                       =                                                 & #(lebesgue-pre-measure.sym)("n") (I union I')
        $
        Thus it is verified that $#(lebesgue-pre-measure.sym)("n")$ is finitely additive. 

    3. The $forall E in #(half-open-rectangle.sym)("n"): #(lebesgue-pre-measure.sym)("n") (E) >= 0$ since the product of positive terms is positive.
]

Given a #pre-measure.tag on a #set-algebra.tag is always possible to extend this #pre-measure.tag to a full-fledge #measure.tag over a #sigma-algebra.tag generated by the #set-algebra.tag. Further, such a #measure.tag is unique. This is the subject of the following theorem. 

#theorem("Carathéodory's Extension Theorem")[
    TODO
    Let $(X,Sigma_0)$ be a #set-ring.tag. Let $mu:Sigma_0 --> RR_(>=0)+{oo}$ be a #pre-measure.tag $(X,Sigma_0)$. 
    Then exists unique $mu:sigma(Sigma_0) --> RR_(>=0) + {oo}$ such that $(X,Sigma,mu)$ is a #measure-space.tag and $#(restriction.sym)(sym.mu,$Sigma_0$) = mu_0$ #comment[($mu$ is a #measure.tag and an #extension.tag of $mu_0$)].
]<caratheodory-extension-theorem>


#definition("Lebesgue Measure")[
    TODO
    Let #(borel-sigma-algebra.sym) be the borel-sigma-algebra on $RR^n$. Let $cal(I)^n_h$ be the set of half open rectangles. Let $#(lebesgue-pre-measure.sym)("n")$ be $n$-dimensional Lebesgue pre-measure.
A measure $mu$ on $(RR^n,cal(B)(RR^n))$ is a *$n$-dimensional Lebesgue Measure* iff $mu|_(cal(I)_h^n)=#(lebesgue-pre-measure.sym)("n")$ #comment[($#(lebesgue-pre-measure.sym)("n")$ is a restriction of $mu$ on $cal(I)^n_h$)].

]<lebesgue-measure>


#theorem("Lebesgue Measure Existence and Uniqueness")[
    TODO
    Let $#(lebesgue-pre-measure.sym)("n")$ be the Lebesgue pre-measure on the $n$-dimensional half open rectangles (I^n_h). Then, the lebesgue measure #comment[(extension of $#(lebesgue-pre-measure.sym)("n")$ to $cal(B)(RR^n)$ borel-sigma-algebra)] exists and it is unique.
]<lebesgue-measure-existence-and-uniqueness>


#proof(text[of @lebesgue-measure-existence-and-uniqueness])[
TODO
]<lebesgue-measure-existence-and-uniqueness-proof>
