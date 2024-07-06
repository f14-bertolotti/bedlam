#import "../measure-theory/introduction.typ" : sigma-algebra-product, measure, measure-space
#import "../theme.typ": example, definition, comment

= Probability Theory

#let probability-space = (
    tag : link(<probability-space>)[probability space]
)
#definition("Probability Space")[
    $(Omega, Sigma, p)$ is said a *probability space* iff. 
    1. $(Omega, Sigma, p)$ is a #measure-space.tag.
    2. $p(Omega) = 1$.
]<probability-space>

Intuitively, #sym.Omega represents the set of all possible outcomes, it is also known as *sample space*. #sym.Sigma represents the set of all possible events. These are nothing more than set of outcomes. It is also known as *event space*. $p$ is a #measure.tag on the event space, it is also known as *probability function*. It maps events to their likelihood.

#example("Fair Die")[
    Consider the #probability-space.tag $(Omega, Sigma, p)$, where:
        1. $Omega = {1, 2, 3, 4, 5, 6}$ is the sample space, representing the possible outcomes of rolling a standard six-sided die.
        2. $Sigma = 2^Omega$ is the event space.
        3. $p: Sigma --> [0, 1]$ is the probability #measure.tag function, defined as $P(E) = (|E|)/6$ for any event $E in Sigma$.
    
    For example, consider the event $A = {1, 2, 3}$, which represents rolling a 1, 2, or 3. This event is an element of $Sigma$. The probability of event $A$ occurring is $p(A) = (|A|)/6 = 3/6 = 1/2$.
]

#let coupling = (
    tag : link(<coupling>)[coupling]
)
#definition("Coupling")[
    Let $(Omega_1, Sigma_1, mu_1)$ and $(Omega_2, Sigma_2, mu_2)$ be #text[#probability-space.tag]s.
    A *coupling* is a #probability-space.tag $(Omega_1 times Omega_2, Sigma_1 #sigma-algebra-product.sym Sigma_2, gamma)$ such that:
    1. $forall E in Sigma_1: gamma(E times Omega_2)=mu_1(E)$. #comment[The left marginal of $gamma$ is $mu_1$].
    2. $forall E in Sigma_2: gamma(Omega_1 times E)=mu_2(E)$. #comment[The right marginal of $gamma$ is $mu_2$].
]<coupling>

#example("Coupling a Dice and a Coin")[
    Consider a #probability-space.tag $cal(F)_1 = (Omega_1={1,2,3,4}, Sigma_1=2^(Omega_1), p_1 = A |-> (|A|)/4)$ #comment[(The #probability-space.tag corresponding to a 4 sided die)]. Further, consider a #probability-space.tag $cal(F)_2=(Omega_2={1,2}, Sigma_2=2^(Omega_2), p_2=A |-> (|A|)/2)$ #comment[(The #probability-space.tag corresponding to a coin)]. We can define a #probability-space.tag $cal(F)=(Omega_1 times Omega_2, Sigma_1 times.circle Sigma_2, p)$ by #coupling.tag $cal(F)_1$ and $cal(F)_2$. Here, sample space and event space are already decided, we need to provide only a proper #measure.tag $p$. Such a #measure.tag can be built by providing a #coupling.tag table:

    $ mat(   
        p   , {1} , {2} , {3} , {4} , p_1;
        {1} , 1/4 , 0   , 1/4 , 0   , 1/2;
        {2} , 0   , 1/4 , 0   , 1/4 , 1/2;
        p_2 , 1/4 , 1/4 , 1/4 , 1/4 , 1;
    ) $

    On the top row, we have the possible singleton events from $cal(F)_1$. On the left column, we have the possible singleton event from $cal(F)_2$. The last row and column corresponds to marginal distributions. These marginals match $p_2$ and $p_1$ as required by the definition of #coupling.tag. The central body of this matrix represents join probabilities of the die and coin. For example, $p({1} times {3})=1/4$. 

    Note that we could fill this matrix in such a way that we have a #probability-space.tag but not a #coupling.tag by breaking the marginal axioms. 

    Retrieving event probabilities from singleton events is only matter of applying traditional probability rules.
]
