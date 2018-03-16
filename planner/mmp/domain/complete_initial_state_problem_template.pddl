(define (problem BYENG) (:domain RADAR)

(:objects 
 policeChief - police
 firechief - fire
 medichief - medic
 transportchief - transport
 apachestation courtstation substation - policestation
 adminfire mesafire scottsfire phxfire - firestation
 lukes joseph - hospital
 lake mill marketplace rural byeng - pois

)

(:init

%INIT%

)

(:goal
(and
%GOAL%
))

(:metric minimize (total-cost))

)
