(define (domain BLOCKS)
  (:requirements :strips :typing)
  (:types block)
  (:predicates (on ?x - block ?y - block)
           (ontable ?x - block)
           (clear ?x - block)
           (handempty)
           (holding ?x - block)
           )

(:action unstack
:parameters (?x - block ?y - block)
:precondition
(and
( clear ?x )
( handempty )
( on ?x ?y )
)
:effect
(and
( holding ?x )
(not ( handempty ))
)
)

(:action pickup
:parameters (?x - block)
:precondition
(and
( ontable ?x )
( clear ?x )
( handempty )
)
:effect
(and
( holding ?x )
(not ( ontable ?x ))
(not ( clear ?x ))
)
)

(:action putdown
:parameters (?x - block)
:precondition
(and

)
:effect
(and
( ontable ?x )
( clear ?x )

)
)

(:action stack
:parameters (?x - block ?y - block)
:precondition
(and
( clear ?y )
( holding ?x )
)
:effect
(and
( on ?x ?y )
( clear ?x )
( handempty )

)
)


)
