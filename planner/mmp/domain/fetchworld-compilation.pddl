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
           (start-flag)
           (domain-change-supported)
           (enable_move)
           (enable_move1) 
           (planning-supported)
           (special_goal_predicate)
	       )

(:action COMP_add_prec_hand_tucked_to_move
     :parameters    ()
     :precondition  (and (domain-change-supported))
     :effect    (and (enable_move1) (not (enable_move)))
     )

(:action COMP_allow_planning
     :parameters    ()
     :precondition  (and (domain-change-supported))
     :effect    (and (planning-supported) (not (domain-change-supported)))
     )

(:action COMP_allow_model_changes
     :parameters    ()
     :precondition  (and (start-flag))
     :effect    (and (domain-change-supported) (not (start-flag)))
)

(:action move_1
	 :parameters	(?from ?to - location)
	 :precondition 	(and (enable_move1) (robot-at ?from) (hand-tucked) (planning-supported))
  	 :effect 	(and (robot-at ?to) (not (robot-at ?from)) (special_goal_predicate))
  	 )

(:action move
	 :parameters	(?from ?to - location)
	 :precondition 	(and (enable_move) (robot-at ?from) (planning-supported))
  	 :effect 	(and (robot-at ?to) (not (robot-at ?from)))
  	 )

(:action pickup
  	 :parameters	(?obj - box ?loc - location)
  	 :precondition 	(and (hand-empty) (block-at ?obj ?loc) (robot-at ?loc) (hand-tucked) (planning-supported))
  	 :effect 	(and (holding ?obj) (not (hand-tucked)) (not (hand-empty)) (not (block-at ?obj ?loc)))
  	 )

(:action putdown
  	 :parameters	(?obj - box ?loc - location)
  	 :precondition 	(and (holding ?obj) (robot-at ?loc) (planning-supported))
  	 :effect 	(and (not (holding ?obj)) (not (hand-tucked)) (hand-empty) (block-at ?obj ?loc))
  	 )

(:action tuck
  	 :parameters	()
  	 :precondition 	(and (not (hand-tucked)) (planning-supported))
  	 :effect 	(and (hand-tucked))
  	 )

(:action charge
  	 :parameters	()
  	 :precondition 	(and (not (charged)) (planning-supported))
  	 :effect 	(and (charged))
  	 )

(:action COMP_prune_action
     :parameters    ()
     :precondition  (and (planning-supported))
     :effect    (and (not (planning-supported)) (start-flag))
)

)
