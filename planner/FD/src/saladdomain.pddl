(define (domain sd)

(:requirements :typing :strips)

(:types location locatable - object
table hand bowl plate - location
cucumber tomato cheese lettuce dressing salad peeler knife - locatable
oil vinegar salt pepper - dressing
)

(:predicates
(at ?x - locatable ?y - location)
(peeled ?x - locatable)
(cut ?x - locatable)
(mixed_ingredients)
(mixed_dressing)
(prepared_salad)
(cuttable ?x - locatable)
)



;; peel_cucumber
;; cut_cucumber
;; place_cucumber_into_bowl
;; cut_tomato
;; place_tomato_into_bowl
;; cut_cheese
;; place_cheese_into_bowl
;; cut_lettuce
;; place_lettuce_into_bowl
;; mix_ingredients
;; add_oil
;; add_vinegar
;; add_salt
;; add_pepper
;; mix_dressing
;; serve_salad_onto_plate


;; picks from table to hand
(:action take  
:parameters(?x - locatable ?y - table ?z - hand)
:precondition(at ?x ?y )
:effect(and(not(at ?x ?y)) (at ?x ?z) ))
)

(:action peel_cucumber
:parameters (?x - peeler ?y - cucumber ?z - hand ?w - table)   ;; x - peeler , y - cucumber, z - hand
:precondition(and(at ?x ?z) (at ?y ?z) not(peeled ?y))
:effect(and(not(at ?x ?z)) (at ?x ?w) (peeled ?y) (at ?y ?w) not(at ?y ?z))
)

(:action cut_cucumber
:parameters (?x - knife ?y - cucumber ?z - hand ?w - table)   
:precondition(and cuttable(?y) (at ?x ?z) (at ?y ?w) (peeled ?y))
:effect(and(not(at ?x ?z)) (at ?x ?w) (cut ?y))
)

(:action cut
:parameters (?x - knife ?y - locatable ?z - hand ?w - table)   
:precondition(and cuttable(?y) (at ?x ?z) (at ?y ?w) not(cut ?y))
:effect(and(not(at ?x ?z)) (at ?x ?w) (cut ?y))
)



(:action place_into_bowl
:parameters (?x - locatable ?y - table ?z - bowl)   
:precondition(and cut(?x) not(mixed_ingredients) )
:effect(and(not(at ?x ?y)) (at ?x ?z))
)


(:action mix_ingredients
:parameters (?x - cucumber ?y - tomato ?z - cheese ?w - lettuce ?a - bowl)   
:precondition(and(at ?x ?a) (at ?y ?a) (at ?z ?a) (at ?w ?a) (not mixed_ingredients))
:effect(and(mixed_ingredients))
)


(:action add_dressing
:parameters (?x - dressing ?y - table ?z - bowl)   
:precondition(and (mixed_ingredients) (at ?x ?y))
:effect(and(at ?x ?z))
)


(:action mix_dressing
:parameters (?x - oil ?y - vinegar ?z - salt ?w - pepper ?a - bowl)   
:precondition(and(at ?x ?a) (at ?y ?a) (at ?z ?a) (at ?w ?a) (not mixed_dressing))
:effect(and(mixed_dressing))
)

(:action serve_salad_onto_plate
:parameters (?x - oil ?y - vinegar ?z - salt ?w - pepper ?a - bowl)   
:precondition(and(at ?x ?a) (at ?y ?a) (at ?z ?a) (at ?w ?a) (mixed_dressing))
:effect(and(prepared_salad))
)

)


