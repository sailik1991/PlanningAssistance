(define (problem tuck)

(:domain fetchworld)

(:objects b1 - box
      loc1 loc2 - location)

(:init
    (block-at b1 loc1)
    (robot-at loc2)
    (hand-empty)
    (hand-tucked)
    (charged)
    (start-flag)
    (enable_move)
)


(:goal
(and
    (block-at b1 loc2)
    (special_goal_predicate)
)
)

)
