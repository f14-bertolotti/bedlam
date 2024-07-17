#import "introduction.typ": *
#import "../notation/main.typ": extension, restriction
#import "../theme.typ": proof, proposition, theorem, definition, example, comment

== Lebesgue Measure



#let lebesgue-pre-measure = (
    tag : link(<lebesgue-pre-measure>)[Lebesgue pre-measure],
    sym : n => link(<lebesgue-pre-measure>)[$lambda^(#n)$]
)
#definition("Lebesgue pre-measure")[
    The *Lebesgue pre-measure* is a mapping $#(lebesgue-pre-measure.sym)("n") :#(half-open-rectangle.sym)("n") --> RR_(>=0) union {+oo}$ #comment[(#(half-open-rectangle.sym)("n") denotes the set half open rectangle)] such that $#(lebesgue-pre-measure.sym)("n") (times.big_(i=1)^(n) [a_i, b_i)) = product_(i=1)^n (b_i-a_i)$ for $a_i,b_i in RR$ and $a_i <= b_i$.
]<lebesgue-pre-measure>

#proposition[
    The Lebesgue pre-measure is a #pre-measure.tag.
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



#definition("Lebesgue Measure")[
    TODO
]<lebesgue-measure>


#theorem("Lebesgue Measure Existence and Uniqueness")[
    TODO
]<lebesgue-measure-existence-and-uniqueness>


#proof(text[of @lebesgue-measure-existence-and-uniqueness])[
TODO
]<lebesgue-measure-existence-and-uniqueness-proof>
