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

(:action alert 
 	:parameters	(?a - agents ?loc - location)
 	:precondition 	(and
 				)
 	:effect		(and	
 					(alerted ?loc)
 					(increase (total-cost) (duration_unit_actions))
 				)
) 	    	 


(:action update
 	:parameters	(?a - agents)
 	:precondition 	(and
 				)
 	:effect		(and	
 					(updated ?a)
 					(increase (total-cost) (duration_unit_actions))
 				)
)


(:action deploy_police_cars
	:parameters	(?a - police ?from - policestation ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
					(has_police_car_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(deployed_police_cars ?to)
					(not (has_police_car_number ?from))
 					(increase (total-cost) (duration_deploy_police_cars))
 				)
)

(:action deploy_small_engines
	:parameters	(?a - fire ?from - firestation ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
					(has_small_engines_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(deployed_engines ?to)
 					(deployed_small_engines ?to)
 					(needed_barricade ?to)
					(not(not_needed_barricade ?to))
					(not (has_small_engines_number ?from))
 					(increase (total-cost) (duration_deploy_small_engines))
 				)
)

(:action deploy_big_engines
	:parameters	(?a - fire ?from - firestation ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
					(has_big_engines_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(deployed_engines ?to)
 					(deployed_big_engines ?to)
 					(needed_barricade ?to)
					(not(not_needed_barricade ?to))
					(not (has_big_engines_number ?from))
 					(increase (total-cost) (duration_deploy_big_engines))
 				)
)

(:action deploy_ladders
	:parameters	(?a - fire ?from - firestation ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
 					(deployed_big_engines ?to)
					(has_ladders_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(deployed_ladders ?to)
					(not (has_ladders_number ?from))
 					(increase (total-cost) (duration_deploy_ladders))
 				)
)

(:action deploy_bulldozers
	:parameters	(?a - fire ?from - firestation ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
					(has_bulldozers_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(deployed_bulldozers ?to)
					(not (has_bulldozers_number ?from))
 					(increase (total-cost) (duration_deploy_bulldozers))
 				)
)

(:action deploy_helicopters
	:parameters	(?a - fire ?from - firestation ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
					(has_helicopters_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(deployed_helicopters ?to)
					(not (has_helicopters_number ?from))
 					(increase (total-cost) (duration_deploy_helicopters))
 				)
)

(:action deploy_rescuers
	:parameters	(?a - fire ?from - firestation ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
					(has_rescuers_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(deployed_rescuers ?to)
					(not (has_rescuers_number ?from))
 					(increase (total-cost) (duration_deploy_rescuers))
 				)
)

(:action deploy_ambulances
	:parameters	(?a - police ?from - hospital ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
					(has_ambulances_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(deployed_ambulances ?to)
					(not (has_ambulances_number ?from))
 					(increase (total-cost) (duration_deploy_ambulances))
 				)
)

(:action position_policemen
	:parameters	(?a - police ?from - policestation ?to - pois) 
 	:precondition 	(and	
 					(alerted ?from)
					(has_policemen_number ?from)
				)
 	:effect		(and	
 					(not (alerted ?from))
 					(positioned_policemen ?to)
 					(increase (total-cost) (duration_position_policemen))
 				)
)

(:action contact_media
	:parameters	(?a - agents) 
 	:precondition 	(and	
				)
 	:effect		(and	
 					(media_contacted ?a)
 					(increase (total-cost) (duration_contact_media))
 				)
)

(:action set_up_helpline
	:parameters	(?a - agents) 
 	:precondition 	(and	
 					(media_contacted ?a)
				)
 	:effect		(and	
 					(active_helpline ?a)
 					(increase (total-cost) (duration_set_up_helpline))
 				)
)

(:action issue_local_alert
	:parameters	(?a - agents) 
 	:precondition 	(and	
 					(media_contacted ?a)
				)
 	:effect		(and	
 					(active_local_alert ?a)
 					(not (needed_active_local_alert ?a))
					(not_needed_active_local_alert ?a)
 					(increase (total-cost) (duration_issue_local_alert))
 				)
)

(:action block_road
	:parameters	(?a - transport ?from - location ?to - location) 
 	:precondition 	(and	
 					(active_local_alert ?a)
 					(positioned_policemen ?to)
 					(deployed_police_cars ?to)
 					(positioned_policemen ?from)
 					(deployed_police_cars ?from)
				)
 	:effect		(and	
 					(blocked_road ?from ?to)
 					(needed_diverted_traffic ?from ?to)
					(not (not_needed_diverted_traffic ?from ?to))
 					(needed_active_local_alert ?a)
					(not (not_needed_active_local_alert ?a))
 					(increase (total-cost) (duration_block_road))
 				)
)

(:action divert_traffic
	:parameters	(?a - transport ?from - location ?to - location) 
 	:precondition 	(and	
 					(active_local_alert ?a)
 					(blocked_road ?from ?to)
				)
 	:effect		(and	
 					(traffic_diverted ?from ?to)
 					(not (needed_diverted_traffic ?from ?to))
					(not_needed_diverted_traffic ?from ?to)
 					(increase (total-cost) (duration_unit_actions))
 				)
)

(:action prepare_evacuation
	:parameters	(?a - police ?from - location) 
 	:precondition 	(and	
 					(active_local_alert ?a)
				)
 	:effect		(and	
 					(prepared_evacuation ?from)
 					(increase (total-cost) (duration_prepare_evacuation))
 				)
)

(:action evacuate
	:parameters	(?a - police ?from - location ?to - location) 
 	:precondition 	(and	
 					(prepared_evacuation ?from)
 					(positioned_policemen ?from)
 					(deployed_police_cars ?from)
 					(blocked_road ?from ?to)
				)
 	:effect		(and	
 					(evacuated ?from ?to)
 					(increase (total-cost) (duration_evacuation))
 				)
)

(:action extinguish_small_fire 
	:parameters	(?a - fire ?at - pois) 
 	:precondition 	(and	
 					(fire_at ?at)
 					(small_fire_at ?at)
					(deployed_engines ?at)
				)
 	:effect		(and	
 					(extinguished_fire ?at)
 					(not (fire_at ?at))
					(not (small_fire_at ?at))
 					(needed_address_media)
					(not (not_needed_address_media))
 					(needed_search_casualties ?at)
					(not(not_needed_search_casualties ?at))
 					(increase (total-cost) (duration_extinguish_small_fire))
 				)
)

(:action extinguish_big_fire 
	:parameters	(?a - fire ?at - pois) 
 	:precondition 	(and	
 					(fire_at ?at)
 					(deployed_big_engines ?at)
				)
 	:effect		(and	
 					(extinguished_fire ?at)
 					(not (fire_at ?at))
 					(needed_search_casualties ?at)
					(not(not_needed_search_casualties ?at))
 					(increase (total-cost) (duration_extinguish_big_fire))
 				)
)

(:action barricade
	:parameters	(?a - fire ?at - pois) 
 	:precondition 	(and(deployed_engines ?at))
 	:effect		(and	
 					(barricaded ?at)
 					(needed_active_local_alert ?a)
					(not(not_needed_active_local_alert ?a))
 					(not (needed_barricade ?at))
					(not_needed_barricade ?at)
 					(increase (total-cost) (duration_barricade))
 				)
)

(:action search_casualties
	:parameters	(?a - fire ?at - pois) 
 	:precondition 	(and	
 					(extinguished_fire ?at)
 					(deployed_bulldozers ?at)
 					(deployed_helicopters ?at)
 					(deployed_rescuers ?at)
				)
 	:effect		(and	
 					(searched ?at)
 					(needed_attend_casualties ?at)
					(not (not_needed_attend_casualties ?at))
 					(needed_address_media)
					(not(not_needed_address_media))
 					(increase (total-cost) (duration_search_casualties))
 				)
)

(:action attend_casualties
	:parameters	(?a - medic ?at - pois) 
 	:precondition 	(and	
 					(needed_attend_casualties ?at)
 					(deployed_ambulances ?at)
				)
 	:effect		(and	
 					(attended_casualties ?at)
 					(not (needed_attend_casualties ?at))
					(not_needed_attend_casualties ?at)
 					(needed_address_media)
					(not(not_needed_address_media))
 					(increase (total-cost) (duration_attend_casualties))
 				)
)

(:action address_media
	:parameters	(?a - agents) 
 	:precondition 	(and	
 					(media_contacted ?a)
 					(needed_address_media)
				)
 	:effect		(and	
 					(addressed_media)
 					(not (needed_address_media))
					(not_needed_address_media)
 					(increase (total-cost) (duration_address_media))
 				)
)

)
