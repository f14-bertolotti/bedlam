#import "../theme.typ" : definition, comment, example

= Notation

#let symmetric-difference = (
    tag : link(<symmetric-difference>)[symmetric difference],
    sym : link(<symmetric-difference>)[#sym.triangle.t]
)
#definition("symmetric difference")[
    Let A, B be sets. The *symmetric difference* is the operation, denoted $S #symmetric-difference.sym T$, and defined $(S without T) union (T without S)$
]<symmetric-difference>

#let half-open-rectangle = (
    tag : link(<half-open-rectangle>)[half-open rectangle],
    sym : n => link(<half-open-rectangle>)[$cal(I)^(#n)_h$]
)
#definition("half-open rectangle")[
    Let $a_0, b_0, ..., a_n, b_n in RR$. The set $times.big_(i=0)^n [a_i, b_i)$ is called an n-dimensional *half-open rectangle*. The collection of all n-dimensional *half-open rectangles* is denoted with #(half-open-rectangle.sym)("n").
]<half-open-rectangle>

#let restriction = (
    tag : link(<restriction>)[restriction],
    sym : (fname, where) => link(<restriction>)[#text[$#fname|_(#where)$]]
)
#definition("restriction")[
    Let $f:X --> Y$. Let $X' subset.eq X$. Let $Y'$ such that $f(X') subset.eq Y' subset.eq Y$. A *restriction of f over $X' times Y'$*, denoted #(restriction.sym)("f","X' times Y'") is a function $X' --> Y'$ such that $#(restriction.sym)("f","X times Y") = {x |-> f(x) | x in X', f(x) in Y'}$
]<restriction>


#example("restriction")[
    Let $f:RR-->RR$ such that $f(x) = x^2$ #comment[power operator over the real numbers]. Now, consider $g:NN-->NN$ such that $g(x) = x^2$ #comment[power operator over the natural number only]. Then $g$ is a #restriction.tag of f. 
    1. $NN subset.eq RR$.
    2. $f(NN) subset.eq NN subset.eq RR$.
    3. ${(x, g(x))| x in NN, y in NN)} subset.eq {(x,f(x)|x in RR, y in RR)}$
]

#let extension = (
    tag : link(<extension>)[extension]
)
#definition("extension")[
    Let $f:X --> Y$. Let $X' subset.eq X$. Let #(restriction.sym)("f","X' times Y'") be a #restriction.tag of $f$. Then $f$ is said an *extension* of #(restriction.sym)("f","X times Y") 
]<extension>

#let inverse = (
    tag : link(<inverse-function>)[inverse],
    sym : (fname) => {return link(<inverse-function>)[#text[$#fname^(-1)$]]}
)
#definition("inverse function")[
    Let $f:X --> Y$ be a function. The *inverse function* $#(inverse.sym)("f") : Y --> X$ is a function such that $#(inverse.sym)("f") (y in Y) = x in X$ if $f(x) = y$.
]<inverse-function>

#let preimage = (
    tag : link(<preimage>)[preimage]
)
#definition("preimage")[
    Let $f:X --> Y$ be a function. Let $E subset.eq Y$. The *preimage* is the set $#(inverse.sym)("f") (E) = {x in X | f(x) in E}$.
]<preimage>

