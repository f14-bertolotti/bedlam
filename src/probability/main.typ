#import "../theme.typ": example, definition, comment



= Probability Theory

#definition("Probability Space")[
    $(Omega, Sigma, p)$ is said a *probability space* iff. 
    1. $(Omega, Sigma, p)$ is a #link(<measure-space>)[measure space].
    2. $p(Omega) = 1$.
]<probability-space>
#show "probability space": link(<probability-space>)[probability space]

Intuitively, #sym.Omega represents the set of all possible outcomes, it is also known as *sample space*. #sym.Sigma represents the set of all possible events. These are nothing more than set of outcomes. It is also known as *event space*. $p$ is a measure on the event space, it is also known as *probability function*. It maps events to their likelihood.

#example("Fair Die")[
    Consider the probability space $(Omega, Sigma, p)$, where:
        1. $Omega = {1, 2, 3, 4, 5, 6}$ is the sample space, representing the possible outcomes of rolling a standard six-sided die.
        2. $Sigma = 2^Omega$ is the event space.
        3. $p: Sigma --> [0, 1]$ is the probability measure function, defined as $P(E) = (|E|)/6$ for any event $E in Sigma$.
    
    For example, consider the event $A = {1, 2, 3}$, which represents rolling a 1, 2, or 3. This event is an element of $Sigma$. The probability of event $A$ occurring is $p(A) = (|A|)/6 = 3/6 = 1/2$.
]

#definition("Coupling")[
    Let $(Omega_1, Sigma_1, mu_1)$ and $(Omega_2, Sigma_2, mu_2)$ be probability spaces.
    A *coupling* is a probability space $(Omega_1 times Omega_2, Sigma_1 #link(<sigma-algebra-product>)[$times.circle$] Sigma_2, gamma)$ such that:
    1. $forall E in Sigma_1: gamma(E times Omega_2)=mu_1(E)$. #comment[The left marginal of $gamma$ is $mu_1$].
    2. $forall E in Sigma_2: gamma(Omega_1 times E)=mu_2(E)$. #comment[The right marginal of $gamma$ is $mu_2$].
]<coupling>
#show "coupling": link(<coupling>)[coupling]

#example("Coupling a Dice and a Coin")[
    Consider a probability space $cal(F)_1 = (Omega_1={1,2,3,4}, Sigma_1=2^(Omega_1), p_1 = A |-> (|A|)/4)$ #comment[(The probability space corresponding to a 4 sided die)]. Further, consider a probability space $cal(F)_2=(Omega_2={1,2}, Sigma_2=2^(Omega_2), p_2=A |-> (|A|)/2)$ #comment[(The probability space corresponding to a coin)]. We can define a probability space $cal(F)=(Omega_1 times Omega_2, Sigma_1 times.circle Sigma_2, p)$ by coupling $cal(F)_1$ and $cal(F)_2$. Here, sample space and event space are already decided, we need to provide only a proper measure $p$. Such a measure can be built by providing a coupling table:

    $ mat(   
        p   , {1} , {2} , {3} , {4} , p_1;
        {1} , 1/4 , 0   , 1/4 , 0   , 1/2;
        {2} , 0   , 1/4 , 0   , 1/4 , 1/2;
        p_2 , 1/4 , 1/4 , 1/4 , 1/4 , 1;
    ) $

    On the top row, we have the possible singleton events from $cal(F)_1$. On the left column, we have the possible singleton event from $cal(F)_2$. The last row and column corresponds to marginal distributions. These marginals match $p_2$ and $p_1$ as required by the definition of coupling. The central body of this matrix represents join probabilities of the die and coin. For example, $p({1} times {3})=1/4$. 

    Note that we could fill this matrix in such a way that we have a probability space but not a coupling by breaking the marginal axioms. 

    Retrieving event probabilities from singleton events is only matter of applying traditional probability rules.
]
