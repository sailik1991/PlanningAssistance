(define (problem BYENG) (:domain RADAR)

(:objects 
 policeChief - police
 firechief - fire
 medichief - medic
 transportchief - transport
 apachestation courtstation - policestation
 adminfire mesafire - firestation
 lukes joseph - hospital
 marketplace rural byeng - pois

)

(:init
(fire_at rural)
(fire_at byeng)
(small_fire_at byeng)

(=(total-cost) 0.0)

( not_needed_search_casualties marketplace )
( not_needed_attend_casualties marketplace )
( not_needed_diverted_traffic marketplace marketplace)
( not_needed_diverted_traffic marketplace rural)
( not_needed_diverted_traffic marketplace byeng)
( not_needed_search_casualties rural )
( not_needed_attend_casualties rural )
( not_needed_diverted_traffic rural marketplace)
( not_needed_diverted_traffic rural rural)
( not_needed_diverted_traffic rural byeng)
( not_needed_search_casualties byeng )
( not_needed_attend_casualties byeng )
( not_needed_diverted_traffic byeng marketplace)
( not_needed_diverted_traffic byeng rural)
( not_needed_diverted_traffic byeng byeng)
( not_needed_active_local_alert policeChief )
( not_needed_active_local_alert firechief )
( not_needed_active_local_alert medichief )
( not_needed_active_local_alert transportchief )
(not_needed_address_media )
(has_small_engines_number adminfire)
(has_big_engines_number adminfire)
(has_ladders_number adminfire)
(has_bulldozers_number adminfire)
(has_helicopters_number adminfire)
(has_rescuers_number adminfire)
(has_small_engines_number mesafire)
(has_big_engines_number mesafire)
(has_ladders_number mesafire)
(has_bulldozers_number mesafire)
(has_helicopters_number mesafire)
(has_rescuers_number mesafire)
(has_ambulances_number lukes)
(has_ambulances_number joseph)
(has_police_car_number apachestation)
(has_policemen_number apachestation)
(has_police_car_number courtstation)
(has_policemen_number courtstation)
(=(duration_unit_actions) 1)
(=(duration_deploy_police_cars) 1)
(=(duration_deploy_small_engines) 2)
(=(duration_deploy_big_engines) 4)
(=(duration_deploy_ladders) 3)
(=(duration_deploy_bulldozers) 3)
(=(duration_deploy_helicopters) 3)
(=(duration_deploy_rescuers) 3)
(=(duration_deploy_ambulances) 2)
(=(duration_position_policemen) 1)
(=(duration_contact_media) 1)
(=(duration_set_up_helpline) 1)
(=(duration_issue_local_alert) 1)
(=(duration_block_road) 2)
(=(duration_prepare_evacuation) 1)
(=(duration_evacuation) 5)
(=(duration_extinguish_small_fire) 1)
(=(duration_extinguish_big_fire) 1)
(=(duration_barricade) 1)
(=(duration_search_casualties) 3)
(=(duration_address_media) 2)
(=(duration_attend_casualties) 3)

)

(:goal
(and
(extinguished_fire rural)
(searched rural)
;( not_needed_search_casualties rural )
;( not_needed_attend_casualties rural )
(extinguished_fire byeng)
(addressed_media)
(not_needed_address_media )
))

(:metric minimize (total-cost))

)
