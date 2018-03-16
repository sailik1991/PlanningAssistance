(define (domain RADAR)

(:requirements :typing :strips :equality :action-costs )

;; TYPES
(:types		police fire transport medic - agents
			hospital policestation firestation pois - location
)

;; PREDICATES

(:predicates	(alerted ?loc - location)
	     		(updated ?a - agents)
	     		(deployed_police_cars ?at - location)
	     		(deployed_engines ?at - location)
	     		(deployed_small_engines ?at - location)
	     		(deployed_big_engines ?at - location)
	     		(deployed_ladders ?at - location)
	     		(deployed_bulldozers ?at - location)
	     		(deployed_helicopters ?at - location)
	     		(deployed_rescuers ?at - location)
	     		(deployed_ambulances ?at - location)
	     		(positioned_policemen ?at - location)
	     		(media_contacted ?a - agents)
	     		(active_helpline ?a - agents)
	     		(active_local_alert ?a - agents)
	     		(blocked_road ?from - location ?to - location)
	     		(traffic_diverted ?from - location ?to - location)
	     		(prepared_evacuation ?from - location)
	     		(evacuated ?from - location ?to - location)
	     		(extinguished_fire ?at - location)
	     		(fire_at ?at - location)
	     		(small_fire_at ?at - location)
	     		(barricaded ?at - location)
	     		(searched ?at - location)
	     		(attended_casualties ?at - location)
	     		(addressed_media)
	     		(needed_barricade ?at - location)
	     		(needed_active_local_alert ?a - agents)
	     		(needed_diverted_traffic ?from - location ?to - location)
	     		(needed_search_casualties ?at - location)
	     		(needed_attend_casualties ?at - location)
	     		(needed_address_media)
			    (not_needed_barricade ?at - location)
	     		(not_needed_active_local_alert ?a - agents)
	     		(not_needed_diverted_traffic ?from - location ?to - location)
	     		(not_needed_search_casualties ?at - location)
	     		(not_needed_attend_casualties ?at - location)
	     		(not_needed_address_media)
			(has_police_car_number ?from - location)
			(has_small_engines_number ?from - location)
			(has_big_engines_number ?from - location)
			(has_ladders_number ?from - location)
			(has_helicopters_number ?from - location)
			(has_rescuers_number ?from - location)
			(has_ambulances_number ?from - location)
			(has_policemen_number ?from - location)
			(has_bulldozers_number ?from - location)
)


;; FUNCTIONS 

(:functions 
	(duration_unit_actions)
	(duration_deploy_police_cars)
	(duration_deploy_small_engines)
	(duration_deploy_big_engines)
	(duration_deploy_ladders)
	(duration_deploy_bulldozers)
	(duration_deploy_helicopters)
	(duration_deploy_rescuers)
	(duration_deploy_ambulances)
	(duration_position_policemen)
	(duration_contact_media)
	(duration_set_up_helpline)
	(duration_issue_local_alert)
	(duration_block_road)
	(duration_prepare_evacuation)
	(duration_evacuation)
	(duration_extinguish_small_fire)
	(duration_extinguish_big_fire)
	(duration_barricade)
	(duration_search_casualties)
	(duration_attend_casualties)
	(duration_address_media)
	(total-cost)
)

;; ACTIONS / OPERATORS

(:action deploy_small_engines
:parameters (?a - fire ?from - firestation ?to - pois)
:precondition
(and
( alerted ?from )
( has_small_engines_number ?from )
)
:effect
(and
( needed_barricade ?to )
( deployed_small_engines ?to )
( deployed_engines ?to )
( increase (total-cost) (duration_deploy_small_engines) )
(not ( has_small_engines_number ?from ))
(not ( alerted ?from ))
(not ( not_needed_barricade ?to ))
)
)

(:action address_media
:parameters (?a - agents)
:precondition
(and
( needed_address_media )
( media_contacted ?a )
)
:effect
(and
( addressed_media )
( increase (total-cost) (duration_address_media) )
( not_needed_address_media )
(not ( needed_address_media ))
)
)

(:action extinguish_big_fire
:parameters (?a - fire ?at - pois)
:precondition
(and
( deployed_big_engines ?at )
( fire_at ?at )
)
:effect
(and
( increase (total-cost) (duration_extinguish_big_fire) )
( extinguished_fire ?at )
( needed_search_casualties ?at )
(not ( not_needed_search_casualties ?at ))
(not ( fire_at ?at ))
)
)

(:action block_road
:parameters (?a - transport ?from - location ?to - location)
:precondition
(and
( positioned_policemen ?from )
( active_local_alert ?a )
( positioned_policemen ?to )
( deployed_police_cars ?from )
( deployed_police_cars ?to )
)
:effect
(and
( needed_active_local_alert ?a )
( needed_diverted_traffic ?from ?to )
( increase (total-cost) (duration_block_road) )
( blocked_road ?from ?to )
(not ( not_needed_diverted_traffic ?from ?to ))
(not ( not_needed_active_local_alert ?a ))
)
)

(:action position_policemen
:parameters (?a - police ?from - policestation ?to - pois)
:precondition
(and
( alerted ?from )
( has_policemen_number ?from )
)
:effect
(and
( increase (total-cost) (duration_position_policemen) )
( positioned_policemen ?to )
(not ( alerted ?from ))
)
)

(:action deploy_ambulances
:parameters (?a - police ?from - hospital ?to - pois)
:precondition
(and
( has_ambulances_number ?from )
( alerted ?from )
)
:effect
(and
( increase (total-cost) (duration_deploy_ambulances) )
( deployed_ambulances ?to )
(not ( has_ambulances_number ?from ))
(not ( alerted ?from ))
)
)

(:action issue_local_alert
:parameters (?a - agents)
:precondition
(and
( media_contacted ?a )
)
:effect
(and
( active_local_alert ?a )
( not_needed_active_local_alert ?a )
( increase (total-cost) (duration_issue_local_alert) )
(not ( needed_active_local_alert ?a ))
)
)

(:action deploy_helicopters
:parameters (?a - fire ?from - firestation ?to - pois)
:precondition
(and
( has_helicopters_number ?from )
( alerted ?from )
)
:effect
(and
( increase (total-cost) (duration_deploy_helicopters) )
( deployed_helicopters ?to )
(not ( has_helicopters_number ?from ))
(not ( alerted ?from ))
)
)

(:action deploy_rescuers
:parameters (?a - fire ?from - firestation ?to - pois)
:precondition
(and
( has_rescuers_number ?from )
( alerted ?from )
)
:effect
(and
( deployed_rescuers ?to )
( increase (total-cost) (duration_deploy_rescuers) )
(not ( has_rescuers_number ?from ))
(not ( alerted ?from ))
)
)

(:action update
:parameters (?a - agents)
:precondition
(and

)
:effect
(and
( increase (total-cost) (duration_unit_actions) )
( updated ?a )

)
)

(:action evacuate
:parameters (?a - police ?from - location ?to - location)
:precondition
(and
( positioned_policemen ?from )
( prepared_evacuation ?from )
( blocked_road ?from ?to )
( deployed_police_cars ?from )
)
:effect
(and
( evacuated ?from ?to )
( increase (total-cost) (duration_evacuation) )

)
)

(:action alert
:parameters (?a - agents ?loc - location)
:precondition
(and

)
:effect
(and
( increase (total-cost) (duration_unit_actions) )
( alerted ?loc )

)
)

(:action contact_media
:parameters (?a - agents)
:precondition
(and

)
:effect
(and
( increase (total-cost) (duration_contact_media) )
( media_contacted ?a )

)
)

(:action extinguish_small_fire
:parameters (?a - fire ?at - pois)
:precondition
(and
( deployed_engines ?at )
( small_fire_at ?at )
( fire_at ?at )
)
:effect
(and
( extinguished_fire ?at )
( increase (total-cost) (duration_extinguish_small_fire) )
( needed_search_casualties ?at )
( needed_address_media )
(not ( not_needed_address_media ))
(not ( not_needed_search_casualties ?at ))
(not ( fire_at ?at ))
(not ( small_fire_at ?at ))
)
)

(:action deploy_police_cars
:parameters (?a - police ?from - policestation ?to - pois)
:precondition
(and
( has_police_car_number ?from )
( alerted ?from )
)
:effect
(and
( increase (total-cost) (duration_deploy_police_cars) )
( deployed_police_cars ?to )
(not ( has_police_car_number ?from ))
(not ( alerted ?from ))
)
)

(:action divert_traffic
:parameters (?a - transport ?from - location ?to - location)
:precondition
(and
( blocked_road ?from ?to )
( active_local_alert ?a )
)
:effect
(and
( traffic_diverted ?from ?to )
( increase (total-cost) (duration_unit_actions) )
( not_needed_diverted_traffic ?from ?to )
(not ( needed_diverted_traffic ?from ?to ))
)
)

(:action deploy_bulldozers
:parameters (?a - fire ?from - firestation ?to - pois)
:precondition
(and
( has_bulldozers_number ?from )
( alerted ?from )
)
:effect
(and
( deployed_bulldozers ?to )
( increase (total-cost) (duration_deploy_bulldozers) )
(not ( has_bulldozers_number ?from ))
(not ( alerted ?from ))
)
)

(:action search_casualties
:parameters (?a - fire ?at - pois)
:precondition
(and
( deployed_helicopters ?at )
( extinguished_fire ?at )
( deployed_bulldozers ?at )
( deployed_rescuers ?at )
)
:effect
(and
( searched ?at )
( needed_attend_casualties ?at )
( needed_address_media )
( increase (total-cost) (duration_search_casualties) )
(not ( not_needed_address_media ))
(not ( not_needed_attend_casualties ?at ))
)
)

(:action set_up_helpline
:parameters (?a - agents)
:precondition
(and
( media_contacted ?a )
)
:effect
(and
( increase (total-cost) (duration_set_up_helpline) )
( active_helpline ?a )

)
)

(:action attend_casualties
:parameters (?a - medic ?at - pois)
:precondition
(and
( deployed_ambulances ?at )
( needed_attend_casualties ?at )
)
:effect
(and
( attended_casualties ?at )
( increase (total-cost) (duration_attend_casualties) )
( not_needed_attend_casualties ?at )
( needed_address_media )
(not ( not_needed_address_media ))
(not ( needed_attend_casualties ?at ))
)
)

(:action barricade
:parameters (?a - fire ?at - pois)
:precondition
(and
( deployed_engines ?at )
)
:effect
(and
( needed_active_local_alert ?a )
( increase (total-cost) (duration_barricade) )
( barricaded ?at )
( not_needed_barricade ?at )
(not ( needed_barricade ?at ))
(not ( not_needed_active_local_alert ?a ))
)
)

(:action deploy_big_engines
:parameters (?a - fire ?from - firestation ?to - pois)
:precondition
(and
( has_big_engines_number ?from )
( alerted ?from )
)
:effect
(and
( needed_barricade ?to )
( deployed_big_engines ?to )
( deployed_engines ?to )
( increase (total-cost) (duration_deploy_big_engines) )
(not ( alerted ?from ))
(not ( not_needed_barricade ?to ))
(not ( has_big_engines_number ?from ))
)
)

(:action prepare_evacuation
:parameters (?a - police ?from - location)
:precondition
(and
( active_local_alert ?a )
)
:effect
(and
( prepared_evacuation ?from )
( increase (total-cost) (duration_prepare_evacuation) )

)
)

(:action deploy_ladders
:parameters (?a - fire ?from - firestation ?to - pois)
:precondition
(and
( alerted ?from )
( deployed_big_engines ?to )
( has_ladders_number ?from )
)
:effect
(and
( deployed_ladders ?to )
( increase (total-cost) (duration_deploy_ladders) )
(not ( alerted ?from ))
(not ( has_ladders_number ?from ))
)
)


)
