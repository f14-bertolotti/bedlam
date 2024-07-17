#import "../theme.typ": definition, proof, lemma, theorem, proposition, comment
#import "introduction.typ": sigma-algebra, outer-measure, set-ring, pre-measure, measure, measure-space
#import "../notation/main.typ": extension, restriction
#import "../set-theory/main.typ" : cover

== Caratheodory Extension Theorem

#proposition(text[#sigma-algebra.tag generated by an #outer-measure.tag])[
    Let $X$ be a set. Let $lambda$ be an #outer-measure.tag on $X$. Let $Sigma_lambda = {A in 2^X | forall E in 2^X : lambda(E) = lambda(E sect A) + lambda(E sect (X without A))}$ #comment[The set of subsets in which #outer-measure.tag cut $X$ in a "good way" ]. Then $Sigma_lambda$ is a #sigma-algebra.tag.
]<sigma-algebra-generated-by-an-outer-measure>

#proof(text[of @sigma-algebra-generated-by-an-outer-measure])[
    We need to show that the axiom a #sigma-algebra.tag hold for $Sigma_lambda$:
    1. #comment[($X in Sigma_lambda$)] Let $E in 2^x$, we have $lambda(E sect X) + lambda(E sect (X without X)) = lambda(E sect X) = lambda (X)$.
    2. #comment[($A in Sigma_lambda ==> X without A in Sigma_lambda$)] Suppose $A in Sigma_lambda ==> forall E in 2^X lambda(E sect A) + lambda(E sect (X without A)) = lambda(E)$. Now consider $lambda(E sect (X without A)) + lambda(E sect (X without (X without A))) = lambda(E sect (X without A)) + lambda(E sect A) = lambda(E)$.
    3. #comment[(${A_n}_(n in NN) in Sigma_lambda ==> union.big_(n in NN) A_n in Sigma_lambda$ (countable unions))]
        1. #comment[($A,B in Sigma_lambda ==> A union B in Sigma_lambda$ (finite unions))] Suppose $A,B in Sigma_lambda$ then 
            - $forall E in 2^X: lambda(E) = lambda(E sect A) + lambda(E sect (X without A))$ and, 
            - $forall E in 2^X: lambda(E) = lambda(E sect B) + lambda(E sect (X without B))$.

            Then, we have that:

            $  
                 &lambda(E sect (A union B)) + lambda(E sect (X without (A union B))) \
                =&lambda(E sect (A union B)) + lambda(E sect (X without A) sect (X without B))                                                                        \
                =&lambda(E sect (A union B) sect A) + lambda(E sect (A union B) sect (X without A)) + lambda(E sect (X without A) sect (X without B))                 \
                =&lambda(E sect A) + lambda(E sect B sect (X without A)) + lambda(E sect (X without A) sect (X without B))                                            \
                =&lambda(E sect A) + lambda(E sect (X without A)) - lambda(E sect (X without A) sect (X without B)) + lambda(E sect (X without A) sect (X without B)) \
                =&lambda(E sect A) + lambda(E sect (X without A))                                                                                                     \
                =&lambda(E)                                                                                                                                           \
            $
        2. Now we proceed to the third property. Let $N in NN$. Let ${A_n in Sigma_lambda}_(n in NN)$. Consider the pairwise disjoint ${A'_n}_(n in NN)$ built as in @unions-as-disjoint-unions. Recall that $union.big_(n in NN) A_n = union.big_(n in NN) A'_n = A$. 
            - We have that: $ 
                               & lambda(E sect (union.big_(n=1)^(N) A'_n)) + lambda(E sect (X without union.big_(n=1)^(N) A'_n)) && #comment[$Sigma_lambda$ is closed under finite unions.] \
                             <=& lambda(E sect (X without union.big_(n=1)^(N) A'_n)) + sum_(n=1)^N lambda(E sect A'_n)           && #comment[definition of #outer-measure.tag] \ 
                             = & lambda(E sect (X without A'_1) sect dots sect (X without A'_N)) + lambda(E sect A'_1) + dots + lambda(E sect A'_N) && #comment[expansion] \
                             = & lambda(E sect (X without A'_2) sect dots sect (X without A'_N)) + lambda(E sect A'_2) + dots + lambda(E sect A'_N) && #comment[definition of $Sigma_lambda$] \
                               & dots \
                             = & lambda(E)
            $
                This relation holds for any $N$, even for $N=oo$.
                Therefore:
                $ lambda(E sect A) + lambda(E sect (X without A)) <= lambda(E) $

            - On the other hand:
                $ lambda(E) = lambda((E sect A) union (E sect (X without A))) <= lambda(E sect A) + lambda(E sect (X without A)) $

            Therefore, we have:

            $ lambda(E) <= lambda(E sect A) + lambda(E sect (X without A)) <= lambda(E) $

            Or, equivalently:
            
            $ lambda(E) = lambda(E sect A) + lambda(E sect (X without A)) $

            Thus: $A in Sigma_lambda$

    Therefore, $Sigma_lambda$ is a #sigma-algebra.tag.
]<sigma-algebra-generated-by-an-outer-measure-proof>

#proposition[
    The restriction of the #outer-measure.tag $lambda$ to the #sigma-algebra.tag $Sigma_lambda$ as in @sigma-algebra-generated-by-an-outer-measure is a #measure.tag for $Sigma_lambda$.
]<outer-measure-restriction-is-a-measure>

#proof(text[of @outer-measure-restriction-is-a-measure])[
    We need to show that the axioms of a measure hold:
    1. #comment[(#(measure.ax1)($lambda$))]. \
        This holds since $lambda$ is an #outer-measure.tag and $nothing in Sigma_lambda$.
    2. #comment[(#(measure.ax2)($lambda$))]. \
        This holds since $lambda$ is an #outer-measure.tag and $forall A in Sigma_lambda: nothing subset.eq A$
    3. #comment[(#(measure.ax3)($lambda$))].
        1. #comment[$lambda(union_(n in NN) E_n) <= sum_(n in NN) lambda(E_n)$]. \
            This hold since $lambda$ is an #outer-measure.tag.
        2. #comment[$lambda(union_(n in NN) E_n) >= sum_(n in NN) lambda(E_n)$]. \
            From @sigma-algebra-generated-by-an-outer-measure-proof, we know that:
            $ lambda(A sect (X without (union_(n in NN) E_n))) + sum_(n in NN) (A sect E_n) <= lambda(A) $
            Since this inequality must hold for any $A$ in $Sigma_lambda$, it must hold also for $union_(n in NN) E_n$:
            $ 
                lambda((union_(n in NN) E_n) sect (X without (union_(n in NN) E_n))) + sum_(n in NN) lambda((union_(n in NN) E_n) sect E_n) & <= lambda(union_(n in NN) E_n) \
                lambda(nothing) + sum_(n in NN) lambda(E_n)                                                                                 & <= lambda(union_(n in NN) E_n) \
                sum_(n in NN) lambda(E_n)                                                                                                   & <= lambda(union_(n in NN) E_n)  \
            $
        Since $lambda(union_(n in NN) E_n) <= sum_(n in NN) lambda(E_n)$ and $lambda(union_(n in NN) E_n) >= sum_(n in NN) lambda(E_n)$, we have that $lambda(union_(n in NN) E_n) = sum_(n in NN) lambda(E_n)$

]

#proposition("measuring outside the measure domain")[
    Let $(cal(R), X)$ be s #set-ring.tag. 
    Let $mu:cal(R) --> RR_(>=0) union {oo}$ be a #measure.tag $cal(R)$. 
    Let $E subset X$. 
    Let $inline( cal(A) = {{A_n}_(n in NN) | A_n in cal(R), E subset.eq union.big_(n in NN) A_n) })$ #comment[(Set of all #text[#cover.tag]s of $E$)]. 
    Let $inline( lambda_mu = inf_({A_n}_(n in NN) in cal(A)) { sum_(n in NN) mu (A_n) })$. Then $lambda_mu$ is an #outer-measure.tag on $X$.
]<measuring-outside-the-measure>

#proof(text[of @measuring-outside-the-measure])[
    We need to proove the three axiom for an #outer-measure.tag.
    1. #comment[(#(outer-measure.ax1)($lambda_mu$))]. 

        Since nothing in $cal(R)$, we have that ${nothing} in cal(A)$. Therefore $lambda_mu (nothing) = 0$.
    2. #comment[(#(outer-measure.ax2)($lambda_mu$))].
    
        A #cover.tag for $B$ is also a #cover.tag of $A$ since $A subset.eq B$. Therefore $lambda_mu (A) <= lambda_mu (B)$
    3. #comment[(#(outer-measure.ax3)($lambda_mu$))].
   

        Let ${A_(n,m)}_(m in NN)$ be the respective #cover.tag for $A_n$. Without loss of generality given by @unions-as-disjoint-unions, let each #cover.tag be pairwise disjoint. Since the union of #cover.tag of sets #text[#cover.tag]s the unions of sets #comment[($union.big A_n subset.eq union.big A_(m,n)$)], we have
        $ lambda_mu (union.big_(n in NN) A_n)  <=& lambda_mu (union.big_(m in NN) union.big_(n in NN) A_(n,m)) && #comment[previous axiom] \
                                               <=& sum_(n in NN) mu (union.big_(m in NN) A_(n,m))              && #comment[None of the #text[#cover.tag]s $A_(n,m)$ achieves the infinum] \
                                                =& sum_(n in NN) sum_(m in NN) mu (A_(n,m))                    && #comment[$A_(n,m_0) sect A_(n,m_1) = nothing$] \
        $
]

#proposition(text[restriction of $lambda_mu$])[
    The restriction of $lambda_mu$ as in @measuring-outside-the-measure on $cal(R)$ is $mu$.
]<restriction-lambda-mu>

#proof(text[of @restriction-lambda-mu])[
    1. #comment[$lambda_mu (A) <= mu(A)$]. \
        For any $A in cal(R)$, $A$ itself is a #cover.tag for $A$, hence $lambda_mu (A) <= mu(A)$ #comment[($lambda_mu$ is the inf. of the measure of all #text[#cover.tag]s)].
    2. #comment[$lambda_mu (A) >= mu(A)$]. 
        Suppose there is a #cover.tag $cal(B) = {B_n in cal(R)}_(n in NN)$ of $A$.
        Let $cal(B)'={B'_n}_(n in NN)$ be the respective pairwise disjoint cover according to @unions-as-disjoint-unions.
        Let $cal(B)'' ={B'_n sect A}_(n in NN)$. We have that $cal(B)''$ is pairwise disjoint and $A = union_(B in cal(B)'') B subset.eq union_(B in cal(B)) B$
        We have that $union_(B in cal(B)'') B = A$ since $cal(B)''$ is a #cover.tag for $A$ intersected with $A$. 
        Then, $mu(A) = mu(union_(B in cal(B)'') B) = sum_(B in cal(B)'') mu(B) <= sum_(B in cal(B)') mu(B) = sum_(B in cal(B)) mu(B)$ since $mu$ is a #measure.tag.
        Therefore, for any #cover.tag $cal(B)$, we have shown that $mu(A) <= sum_(B in cal(B)) mu(B)$.
        Then, $mu(A) <= lambda_mu (A)$, since $lambda_mu$ is the inf. of all #text[#cover.tag]s.

    Putting all togheter:
    $ mu(A) <= lambda_mu (A) <= mu(A) $
    Therefore, $mu(A) = lambda_mu (A)$.

]


From @sigma-algebra-generated-by-an-outer-measure and @outer-measure-restriction-is-a-measure, we have the means to generate a #measure-space.tag (#sigma-algebra.tag and #measure.tag) just from an #outer-measure.tag. Further, from #set-ring.tag and a #measure.tag on the ring we can build an #outer-measure.tag, thanks to @measuring-outside-the-measure. Thus by piecing these construction together, we may be able to generate a #measure-space.tag from a #set-ring.tag with a #measure.tag. This is indeed the subject of @caratheodory-extension-theorem.

#lemma[
    Let $(X,cal(R))$ be a #set-ring.tag. 
    Let $mu$ be a #measure.tag $(X,cal(R))$. 
    Let $lambda$ be the #outer-measure.tag associated with $mu$ (according to @measuring-outside-the-measure). 
    Let $Sigma$ be the #sigma-algebra.tag associated with $lambda$ (according to @sigma-algebra-generated-by-an-outer-measure).
    Then $cal(R) subset.eq Sigma$
]<caratheodory-lemma>

#proof(text[of @caratheodory-lemma])[
    Let $A in cal(R)$.
    Let $E in 2^X$.

    1. #comment[$lambda(E) <= lambda(E sect A) + lambda(E sect (X without A))$] \
        Let Since $lambda$ is an #outer-measure.tag, we have $lambda(E) = lambda((E sect A) union (E sect (X without A))) <= lambda(E sect A) + lambda(E sect (X without A))$.
    
    2. #comment[$lambda(E sect A) + lambda(E sect (X without A)) <= lambda(E)$] \
        Now, Let ${A_n}_(n in NN)$ be a disjoint $cal(R)$-#cover.tag of $E$.
        Then, ${A_n sect A}$ is a disjoint $cal(R)$-#cover.tag of $X sect A$.
        And, ${A_n sect (X without A)}$ is a disjoint $cal(R)$-#cover.tag of $X sect (X without A)$.
        
        Now recall that $lambda$ (according to @measuring-outside-the-measure) is the infimum from all possible covers for $mu$. Since, we simply picked two possible #text[#cover.tag]s the following hold:

        $ lambda(E sect A) + lambda(E sect (X without A)) <= sum_(n in NN) mu(A_n sect A) + sum_(n in NN) mu(A_n sect (X without A)) $

        Notice that $E sect A_n$ and $E sect (X without A_n)$ are disjoint, and therefore: 
        
        $ mu(E sect A_n) + mu(E sect (X without A_n)) = mu((E sect A_n) union (E sect (X without A_n))) = mu(A_n) $

        Returning to the previous inequality, we have that:

        $ sum_(n in NN) mu(A_n sect A) + sum_(n in NN) mu(A_n sect (X without A)) <= sum_(n in NN) mu(A_n) $

        Since $lambda(E sect A) + lambda(E sect (X without A)) <= sum_(n in NN) mu(A_n)$ holds for all #text[#cover.tag]s, then it must hold for the tightest #cover.tag:

        $ lambda(E sect A) + lambda(E sect (X without A)) <= lambda(E) $

    3. #comment[$lambda(E) = lambda(E sect A) + lambda(E sect (X without A))$] \
        Since $lambda(E) <= lambda(E sect A) + lambda(E sect (X without A)) <= lambda(E)$, we have that $lambda(E) = lambda(E sect A) + lambda(E sect (X without A))$.

    4. #comment[$A in Sigma$] \
        By definition of $Sigma$ (according to @sigma-algebra-generated-by-an-outer-measure) we have that $A in Sigma$.
]

TODO: check measure used in the ring, that is probably a pre-measure.

#theorem("Caratheodory's Extension Theorem")[
    TODO
]<caratheodory-extension-theorem>
