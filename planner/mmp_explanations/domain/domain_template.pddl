(define (domain fetchworld)

(:requirements :strips :typing :action-costs :negative-preconditions)

(:types        location locatable - object
           box - locatable
           )

(:predicates   (hand-tucked)
           (hand-empty)
           (charged)
               (holding ?obj - box)
               (block-at ?obj - box ?pos - location)
           (robot-at ?pos - location)
           (dummy)
           )

{}

)
