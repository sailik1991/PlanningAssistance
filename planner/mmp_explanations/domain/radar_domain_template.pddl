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

{}

)
