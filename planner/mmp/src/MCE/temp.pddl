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
( clear ?y )
( holding ?x )
(not ( clear ?x ))
(not ( handempty ))
(not ( on ?x ?y ))
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
(not ( clear ?x ))
(not ( handempty ))
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
( handempty )
(not ( holding ?x ))
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
(not ( holding ?x ))
(not ( clear ?y ))
)
)


)
