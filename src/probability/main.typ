#import "../theme.typ": definition, comment

= Probability Theory

#definition("Probability Space")[
    $(Omega, Sigma, p)$ is said a *probability space* iff. 
    1. $(Omega, Sigma, p)$ is a #link(<measure-space>)[measure space].
    2. $p(Omega) = 1$.
]<probability-space>

#definition("Coupling")[
    Let $(Omega_1, Sigma_1, mu_1)$ and $(Omega_2, Sigma_2, mu_2)$ be #link(<probability-space>)[probability spaces].
    A *coupling* is a #link(<probability-space>)[probability space] $(Omega_1 times Omega_2, Sigma_1 #link(<sigma-algebra-product>)[$times.circle$] Sigma_2, gamma)$ such that:
    1. $forall E in Sigma_1: gamma(E times Omega_2)=mu_1(E)$.
    2. $forall E in Sigma_2: gamma(Omega_1 times E)=mu_2(E)$.
]<coupling>
