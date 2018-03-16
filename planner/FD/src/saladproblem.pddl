(define (problem sp) (:domain sd)

(:objects

table1 - table
hand1 - hand 
bowl1 - bowl 
plate1 - plate
cucumber1 - cucumber 
tomato1 - tomato 
cheese1 - cheese 
lettuce1 - lettuce 
peeler1 - peeler 
knife1 - knife
oil1 - oil 
vinegar1 - vinegar
salt1 - salt 
pepper1 - pepper
)

(:init
		(at cucumber1 table1)
		(at tomato1 table1)
		(at cheese1 table1)
		(at lettuce1 table1)
		(at peeler1 table1)
		(at knife1 table1)
		(at oil1 table1)
		(at vinegar1 table1)
		(at salt1 table1)
		(at pepper1 table1)
		(cuttable cucumber1)
		(cuttable tomato1)
		(cuttable cheese1)
		(cuttable lettuce1)
)


(:goal
	(and
		(prepared_salad)
		)
	)
)
