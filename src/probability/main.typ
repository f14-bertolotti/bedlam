#import "../theme.typ": example, definition, comment

= Probability Theory

#definition("Probability Space")[
    $(Omega, Sigma, p)$ is said a *probability space* iff. 
    1. $(Omega, Sigma, p)$ is a #link(<measure-space>)[measure space].
    2. $p(Omega) = 1$.
]<probability-space>

Intuitively, #sym.Omega represents the set of all possible outcomes, it is also known as *sample space*. #sym.Sigma represents the set of all possible events. These are nothing more than set of outcomes. It is also known as *event space*. $p$ is a measure on the event space, it is also known as *probability function*. It maps events to their likelihood.

#example("Fair Die")[
Consider the probability space $(Omega, Sigma, p)$, where:
    1. $Omega = {1, 2, 3, 4, 5, 6}$ is the sample space, representing the possible outcomes of rolling a standard six-sided die.
    2. $Sigma = 2^Omega$ is the event space.
    3. $p: Sigma --> [0, 1]$ is the probability measure function, defined as $P(E) = (|E|)/6$ for any event $E in Sigma$.

For example, consider the event $A = {1, 2, 3}$, which represents rolling a 1, 2, or 3. This event is an element of $Sigma$. The probability of event $A$ occurring is $p(A) = (|A|)/6 = 3/6 = 1/2$.
]

#definition("Coupling")[
    Let $(Omega_1, Sigma_1, mu_1)$ and $(Omega_2, Sigma_2, mu_2)$ be #link(<probability-space>)[probability spaces].
    A *coupling* is a #link(<probability-space>)[probability space] $(Omega_1 times Omega_2, Sigma_1 #link(<sigma-algebra-product>)[$times.circle$] Sigma_2, gamma)$ such that:
    1. $forall E in Sigma_1: gamma(E times Omega_2)=mu_1(E)$.
    2. $forall E in Sigma_2: gamma(Omega_1 times E)=mu_2(E)$.
]<coupling>
