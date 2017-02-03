(define
	(domain grounded-BLOCKSWORLD-LETTER)
	(:requirements :strips :action-costs)
	(:predicates
                (DONE)
		( R_HOLDING_B3 )
		( HUMAN_CAN_PREP_ACTION )
		( R_HOLDING_B6 )
		( R_HOLDING_B7 )
		( ON_B3_B2 )
		( ON_B3_B3 )
		( ON_B3_B5 )
		( ON_B3_B6 )
		( ON_B6_B2 )
		( ON_B6_B3 )
		( ON_B6_B5 )
		( ON_B6_B6 )
		( ON_B7_B2 )
		( AT_B7_R1 )
		( ON_B7_B3 )
		( ON_B7_B5 )
		( ON_B7_B6 )
		( ON_B7_B7 )
		( R_HOLDING_B2 )
		( CLEAR_B1 )
		( R_HOLDING_B5 )
		( CLEAR_B4 )
		( WORD_FORMED_A_A_A )
		( WORD_FORMED_A_A_P )
		( WORD_FORMED_A_P_P )
		( WORD_FORMED_P_P_P )
		( WORD_FORMED_P_A_P )
		( WORD_FORMED_A_A_R )
		( WORD_FORMED_A_P_R )
		( WORD_FORMED_P_P_R )
		( WORD_FORMED_P_A_R )
		( WORD_FORMED_A_R_T )
		( WORD_FORMED_P_R_T )
		( WORD_FORMED_A_P_A )
		( WORD_FORMED_P_P_A )
		( WORD_FORMED_P_A_A )
		( WORD_FORMED_A_A_N )
		( WORD_FORMED_A_P_N )
		( WORD_FORMED_P_P_N )
		( WORD_FORMED_P_A_N )
		( WORD_FORMED_A_N_Q )
		( WORD_FORMED_P_N_Q )
		( HOLDING_B1 )
		( HOLDING_B3 )
		( HOLDING_B4 )
		( HOLDING_B6 )
		( HOLDING_B7 )
		( ON_B1_B1 )
		( ON_B1_B2 )
		( ON_B1_B3 )
		( ON_B1_B4 )
		( ON_B1_B5 )
		( ON_B1_B6 )
		( ON_B1_B7 )
		( ON_B3_B1 )
		( ON_B3_B4 )
		( ON_B3_B7 )
		( ON_B4_B1 )
		( ON_B4_B2 )
		( ON_B4_B3 )
		( ON_B4_B4 )
		( ON_B4_B5 )
		( ON_B4_B6 )
		( ON_B4_B7 )
		( ON_B6_B1 )
		( ON_B6_B4 )
		( ON_B6_B7 )
		( ON_B7_B1 )
		( ON_B7_B4 )
		( HOLDING_B2 )
		( HOLDING_B5 )
		( R_HOLDING_B1 )
		( R_HOLDING_B4 )
		( ONTABLE_B2 )
		( ONTABLE_B5 )
		( ON_B2_B2 )
		( ON_B2_B3 )
		( ON_B2_B4 )
		( ON_B2_B5 )
		( ON_B2_B6 )
		( ON_B2_B7 )
		( ON_B5_B1 )
		( ON_B5_B2 )
		( ON_B5_B3 )
		( ON_B5_B5 )
		( ON_B5_B6 )
		( ON_B5_B7 )
		( WORD_FORMED_R_A_A )
		( WORD_FORMED_T_A_A )
		( WORD_FORMED_N_A_A )
		( WORD_FORMED_Q_A_A )
		( WORD_FORMED_R_P_A )
		( WORD_FORMED_T_P_A )
		( WORD_FORMED_N_P_A )
		( WORD_FORMED_Q_P_A )
		( WORD_FORMED_A_R_A )
		( WORD_FORMED_P_R_A )
		( WORD_FORMED_R_R_A )
		( WORD_FORMED_T_R_A )
		( WORD_FORMED_N_R_A )
		( WORD_FORMED_Q_R_A )
		( WORD_FORMED_A_T_A )
		( WORD_FORMED_P_T_A )
		( WORD_FORMED_R_T_A )
		( WORD_FORMED_T_T_A )
		( WORD_FORMED_N_T_A )
		( WORD_FORMED_Q_T_A )
		( WORD_FORMED_A_N_A )
		( WORD_FORMED_P_N_A )
		( WORD_FORMED_R_N_A )
		( WORD_FORMED_T_N_A )
		( WORD_FORMED_N_N_A )
		( WORD_FORMED_Q_N_A )
		( WORD_FORMED_A_Q_A )
		( WORD_FORMED_P_Q_A )
		( WORD_FORMED_R_Q_A )
		( WORD_FORMED_T_Q_A )
		( WORD_FORMED_N_Q_A )
		( WORD_FORMED_Q_Q_A )
		( WORD_FORMED_R_A_P )
		( WORD_FORMED_T_A_P )
		( WORD_FORMED_N_A_P )
		( WORD_FORMED_Q_A_P )
		( WORD_FORMED_R_P_P )
		( WORD_FORMED_T_P_P )
		( WORD_FORMED_N_P_P )
		( WORD_FORMED_Q_P_P )
		( WORD_FORMED_A_R_P )
		( WORD_FORMED_P_R_P )
		( WORD_FORMED_R_R_P )
		( WORD_FORMED_T_R_P )
		( WORD_FORMED_N_R_P )
		( WORD_FORMED_Q_R_P )
		( WORD_FORMED_A_T_P )
		( WORD_FORMED_P_T_P )
		( WORD_FORMED_R_T_P )
		( WORD_FORMED_T_T_P )
		( WORD_FORMED_N_T_P )
		( WORD_FORMED_Q_T_P )
		( WORD_FORMED_A_N_P )
		( WORD_FORMED_P_N_P )
		( WORD_FORMED_R_N_P )
		( WORD_FORMED_T_N_P )
		( WORD_FORMED_N_N_P )
		( WORD_FORMED_Q_N_P )
		( WORD_FORMED_A_Q_P )
		( WORD_FORMED_P_Q_P )
		( WORD_FORMED_R_Q_P )
		( WORD_FORMED_T_Q_P )
		( WORD_FORMED_N_Q_P )
		( WORD_FORMED_Q_Q_P )
		( WORD_FORMED_R_A_R )
		( WORD_FORMED_T_A_R )
		( WORD_FORMED_N_A_R )
		( WORD_FORMED_Q_A_R )
		( WORD_FORMED_R_P_R )
		( WORD_FORMED_T_P_R )
		( WORD_FORMED_N_P_R )
		( WORD_FORMED_Q_P_R )
		( WORD_FORMED_A_R_R )
		( WORD_FORMED_P_R_R )
		( WORD_FORMED_R_R_R )
		( WORD_FORMED_T_R_R )
		( WORD_FORMED_N_R_R )
		( WORD_FORMED_Q_R_R )
		( WORD_FORMED_A_T_R )
		( WORD_FORMED_P_T_R )
		( WORD_FORMED_R_T_R )
		( WORD_FORMED_T_T_R )
		( WORD_FORMED_N_T_R )
		( WORD_FORMED_Q_T_R )
		( WORD_FORMED_A_N_R )
		( WORD_FORMED_P_N_R )
		( WORD_FORMED_R_N_R )
		( WORD_FORMED_T_N_R )
		( WORD_FORMED_N_N_R )
		( WORD_FORMED_Q_N_R )
		( WORD_FORMED_A_Q_R )
		( WORD_FORMED_P_Q_R )
		( WORD_FORMED_R_Q_R )
		( WORD_FORMED_T_Q_R )
		( WORD_FORMED_N_Q_R )
		( WORD_FORMED_Q_Q_R )
		( WORD_FORMED_A_A_T )
		( WORD_FORMED_P_A_T )
		( WORD_FORMED_R_A_T )
		( WORD_FORMED_T_A_T )
		( WORD_FORMED_N_A_T )
		( WORD_FORMED_Q_A_T )
		( WORD_FORMED_A_P_T )
		( WORD_FORMED_P_P_T )
		( WORD_FORMED_R_P_T )
		( WORD_FORMED_T_P_T )
		( WORD_FORMED_N_P_T )
		( WORD_FORMED_Q_P_T )
		( WORD_FORMED_R_R_T )
		( WORD_FORMED_T_R_T )
		( WORD_FORMED_N_R_T )
		( WORD_FORMED_Q_R_T )
		( WORD_FORMED_A_T_T )
		( WORD_FORMED_P_T_T )
		( WORD_FORMED_R_T_T )
		( WORD_FORMED_T_T_T )
		( WORD_FORMED_N_T_T )
		( WORD_FORMED_Q_T_T )
		( WORD_FORMED_A_N_T )
		( WORD_FORMED_P_N_T )
		( WORD_FORMED_R_N_T )
		( WORD_FORMED_T_N_T )
		( WORD_FORMED_N_N_T )
		( WORD_FORMED_Q_N_T )
		( WORD_FORMED_A_Q_T )
		( WORD_FORMED_P_Q_T )
		( WORD_FORMED_R_Q_T )
		( WORD_FORMED_T_Q_T )
		( WORD_FORMED_N_Q_T )
		( WORD_FORMED_Q_Q_T )
		( WORD_FORMED_R_A_N )
		( WORD_FORMED_T_A_N )
		( WORD_FORMED_N_A_N )
		( WORD_FORMED_Q_A_N )
		( WORD_FORMED_R_P_N )
		( WORD_FORMED_T_P_N )
		( WORD_FORMED_N_P_N )
		( WORD_FORMED_Q_P_N )
		( WORD_FORMED_A_R_N )
		( WORD_FORMED_P_R_N )
		( WORD_FORMED_R_R_N )
		( WORD_FORMED_T_R_N )
		( WORD_FORMED_N_R_N )
		( WORD_FORMED_Q_R_N )
		( WORD_FORMED_A_T_N )
		( WORD_FORMED_P_T_N )
		( WORD_FORMED_R_T_N )
		( WORD_FORMED_T_T_N )
		( WORD_FORMED_N_T_N )
		( WORD_FORMED_Q_T_N )
		( WORD_FORMED_A_N_N )
		( WORD_FORMED_P_N_N )
		( WORD_FORMED_R_N_N )
		( WORD_FORMED_T_N_N )
		( WORD_FORMED_N_N_N )
		( WORD_FORMED_Q_N_N )
		( WORD_FORMED_A_Q_N )
		( WORD_FORMED_P_Q_N )
		( WORD_FORMED_R_Q_N )
		( WORD_FORMED_T_Q_N )
		( WORD_FORMED_N_Q_N )
		( WORD_FORMED_Q_Q_N )
		( WORD_FORMED_A_A_Q )
		( WORD_FORMED_P_A_Q )
		( WORD_FORMED_R_A_Q )
		( WORD_FORMED_T_A_Q )
		( WORD_FORMED_N_A_Q )
		( WORD_FORMED_Q_A_Q )
		( WORD_FORMED_A_P_Q )
		( WORD_FORMED_P_P_Q )
		( WORD_FORMED_R_P_Q )
		( WORD_FORMED_T_P_Q )
		( WORD_FORMED_N_P_Q )
		( WORD_FORMED_Q_P_Q )
		( WORD_FORMED_A_R_Q )
		( WORD_FORMED_P_R_Q )
		( WORD_FORMED_R_R_Q )
		( WORD_FORMED_T_R_Q )
		( WORD_FORMED_N_R_Q )
		( WORD_FORMED_Q_R_Q )
		( WORD_FORMED_A_T_Q )
		( WORD_FORMED_P_T_Q )
		( WORD_FORMED_R_T_Q )
		( WORD_FORMED_T_T_Q )
		( WORD_FORMED_N_T_Q )
		( WORD_FORMED_Q_T_Q )
		( WORD_FORMED_R_N_Q )
		( WORD_FORMED_T_N_Q )
		( WORD_FORMED_N_N_Q )
		( WORD_FORMED_Q_N_Q )
		( WORD_FORMED_A_Q_Q )
		( WORD_FORMED_P_Q_Q )
		( WORD_FORMED_R_Q_Q )
		( WORD_FORMED_T_Q_Q )
		( WORD_FORMED_N_Q_Q )
		( WORD_FORMED_Q_Q_Q )
		( CLEAR_B5 )
		( R_HANDEMPTY )
		( AT_B5_R1 )
		( ROBOT_CAN_PREP_ACTION )
		( CLEAR_B2 )
		( AT_B2_R1 )
		( HANDEMPTY )
		( CLEAR_B7 )
		( CLEAR_B6 )
		( CLEAR_B3 )
		( AT_B6_R1 )
		( AT_B4_R1 )
		( AT_B3_R1 )
		( AT_B1_R1 )
		( FREE_M1 )
		( FREE_M2 )
		( ONTABLE_B7 )
		( ONTABLE_B4 )
		( ONTABLE_B1 )
		( ON_B5_B4 )
		( ON_B2_B1 )
		( AT_B7_R2 )
		( ONTABLE_B6 )
		( ONTABLE_B3 )
	) 
	(:functions (total-cost))
	(:action ROBOT_PICKUP_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( R_HANDEMPTY )
			( ONTABLE_B5 )
			( CLEAR_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( ONTABLE_B5 ))
			(not ( CLEAR_B5 ))
			(not ( R_HANDEMPTY ))
			(not ( AT_B5_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PICKUP_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( R_HANDEMPTY )
			( ONTABLE_B2 )
			( CLEAR_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( ONTABLE_B2 ))
			(not ( CLEAR_B2 ))
			(not ( R_HANDEMPTY ))
			(not ( AT_B2_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B5_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B5 )
			( CLEAR_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( HANDEMPTY ))
			(not ( ON_B5_B7 ))
			(not ( AT_B5_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B5_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B5 )
			( CLEAR_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( HANDEMPTY ))
			(not ( ON_B5_B6 ))
			(not ( AT_B5_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B5_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HANDEMPTY ))
			(not ( ON_B5_B5 ))
			(not ( AT_B5_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B5_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B5 )
			( CLEAR_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( HANDEMPTY ))
			(not ( ON_B5_B3 ))
			(not ( AT_B5_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B5_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B5 )
			( CLEAR_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( HANDEMPTY ))
			(not ( ON_B5_B2 ))
			(not ( AT_B5_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B5_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B5 )
			( CLEAR_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( HANDEMPTY ))
			(not ( ON_B5_B1 ))
			(not ( AT_B5_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B2_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B2 )
			( CLEAR_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( HANDEMPTY ))
			(not ( ON_B2_B7 ))
			(not ( AT_B2_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B2_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B2 )
			( CLEAR_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( HANDEMPTY ))
			(not ( ON_B2_B6 ))
			(not ( AT_B2_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B2_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B2 )
			( CLEAR_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( HANDEMPTY ))
			(not ( ON_B2_B5 ))
			(not ( AT_B2_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B2_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B2 )
			( CLEAR_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( HANDEMPTY ))
			(not ( ON_B2_B4 ))
			(not ( AT_B2_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B2_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B2 )
			( CLEAR_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( HANDEMPTY ))
			(not ( ON_B2_B3 ))
			(not ( AT_B2_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B2_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HANDEMPTY ))
			(not ( ON_B2_B2 ))
			(not ( AT_B2_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B5_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( HANDEMPTY )
			( ON_B5_B7 )
			( AT_B5_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B5 ))
			(not ( CLEAR_B7 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B5_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( HANDEMPTY )
			( ON_B5_B6 )
			( AT_B5_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B5 ))
			(not ( CLEAR_B6 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B5_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_B5_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B5 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B5_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( HANDEMPTY )
			( ON_B5_B4 )
			( AT_B5_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B5 ))
			(not ( CLEAR_B4 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B5_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( HANDEMPTY )
			( ON_B5_B3 )
			( AT_B5_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B5 ))
			(not ( CLEAR_B3 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B5_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( HANDEMPTY )
			( ON_B5_B2 )
			( AT_B5_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B5 ))
			(not ( CLEAR_B2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B5_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( HANDEMPTY )
			( ON_B5_B1 )
			( AT_B5_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B5 ))
			(not ( CLEAR_B1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B2_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( HANDEMPTY )
			( ON_B2_B7 )
			( AT_B2_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B2 ))
			(not ( CLEAR_B7 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B2_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( HANDEMPTY )
			( ON_B2_B6 )
			( AT_B2_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B2 ))
			(not ( CLEAR_B6 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B2_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( HANDEMPTY )
			( ON_B2_B5 )
			( AT_B2_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B2 ))
			(not ( CLEAR_B5 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B2_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( HANDEMPTY )
			( ON_B2_B4 )
			( AT_B2_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B2 ))
			(not ( CLEAR_B4 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B2_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( HANDEMPTY )
			( ON_B2_B3 )
			( AT_B2_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B2 ))
			(not ( CLEAR_B3 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B2_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_B2_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B2_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( HANDEMPTY )
			( ON_B2_B1 )
			( AT_B2_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B2 ))
			(not ( CLEAR_B1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PUTDOWN_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( HANDEMPTY )
			( ONTABLE_B5 )
			( AT_B5_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B5 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PUTDOWN_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( HANDEMPTY )
			( ONTABLE_B2 )
			( AT_B2_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PICKUP_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( HANDEMPTY )
			( ONTABLE_B5 )
			( CLEAR_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( ONTABLE_B5 ))
			(not ( CLEAR_B5 ))
			(not ( HANDEMPTY ))
			(not ( AT_B5_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PICKUP_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( HANDEMPTY )
			( ONTABLE_B2 )
			( CLEAR_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( ONTABLE_B2 ))
			(not ( CLEAR_B2 ))
			(not ( HANDEMPTY ))
			(not ( AT_B2_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B1_B1_Q_Q_Q
		:parameters ()
		:precondition
		(and
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_Q_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B1_B1_N_Q_Q
		:parameters ()
		:precondition
		(and
			( ON_B1_B1 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_Q_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B1_B1_A_Q_Q
		:parameters ()
		:precondition
		(and
			( ON_B1_B1 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B1_B1_T_Q_Q
		:parameters ()
		:precondition
		(and
			( ON_B1_B1 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_Q_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B1_B1_R_Q_Q
		:parameters ()
		:precondition
		(and
			( ON_B1_B1 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_Q_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B1_B1_P_Q_Q
		:parameters ()
		:precondition
		(and
			( ON_B1_B1 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_Q_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B1_B1_A_Q_Q
		:parameters ()
		:precondition
		(and
			( ON_B1_B1 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B2_B1_Q_N_Q
		:parameters ()
		:precondition
		(and
			( ON_B2_B1 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_N_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B2_B1_N_N_Q
		:parameters ()
		:precondition
		(and
			( ON_B2_B1 )
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_N_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B2_B1_T_N_Q
		:parameters ()
		:precondition
		(and
			( ON_B2_B1 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_N_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B2_B1_R_N_Q
		:parameters ()
		:precondition
		(and
			( ON_B2_B1 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_N_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B3_B1_Q_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B3_B1 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B3_B1_N_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B3_B1 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B3_B1_A_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B3_B1 )
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B3_B1_T_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B3_B1 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B3_B1_R_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B3_B1 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B3_B1_P_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B3_B1 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B3_B1_A_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B3_B1 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B4_B1_Q_T_Q
		:parameters ()
		:precondition
		(and
			( ON_B4_B1 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_T_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B4_B1_N_T_Q
		:parameters ()
		:precondition
		(and
			( ON_B4_B1 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_T_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B4_B1_A_T_Q
		:parameters ()
		:precondition
		(and
			( ON_B4_B1 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B4_B1_T_T_Q
		:parameters ()
		:precondition
		(and
			( ON_B4_B1 )
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_T_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B4_B1_R_T_Q
		:parameters ()
		:precondition
		(and
			( ON_B4_B1 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_T_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B4_B1_P_T_Q
		:parameters ()
		:precondition
		(and
			( ON_B4_B1 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_T_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B4_B1_A_T_Q
		:parameters ()
		:precondition
		(and
			( ON_B4_B1 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B5_B1_Q_R_Q
		:parameters ()
		:precondition
		(and
			( ON_B5_B1 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_R_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B5_B1_N_R_Q
		:parameters ()
		:precondition
		(and
			( ON_B5_B1 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_R_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B5_B1_A_R_Q
		:parameters ()
		:precondition
		(and
			( ON_B5_B1 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B5_B1_T_R_Q
		:parameters ()
		:precondition
		(and
			( ON_B5_B1 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_R_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B5_B1_R_R_Q
		:parameters ()
		:precondition
		(and
			( ON_B5_B1 )
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_R_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B5_B1_P_R_Q
		:parameters ()
		:precondition
		(and
			( ON_B5_B1 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_R_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B5_B1_A_R_Q
		:parameters ()
		:precondition
		(and
			( ON_B5_B1 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B6_B1_Q_P_Q
		:parameters ()
		:precondition
		(and
			( ON_B6_B1 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_P_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B6_B1_N_P_Q
		:parameters ()
		:precondition
		(and
			( ON_B6_B1 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_P_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B6_B1_A_P_Q
		:parameters ()
		:precondition
		(and
			( ON_B6_B1 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B6_B1_T_P_Q
		:parameters ()
		:precondition
		(and
			( ON_B6_B1 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_P_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B6_B1_R_P_Q
		:parameters ()
		:precondition
		(and
			( ON_B6_B1 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_P_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B6_B1_P_P_Q
		:parameters ()
		:precondition
		(and
			( ON_B6_B1 )
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_P_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B6_B1_A_P_Q
		:parameters ()
		:precondition
		(and
			( ON_B6_B1 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B7_B1_Q_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B7_B1 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B7_B1_N_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B7_B1 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B7_B1_A_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B7_B1 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B7_B1_T_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B7_B1 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B7_B1_R_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B7_B1 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B7_B1_P_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B7_B1 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B7_B1_A_A_Q
		:parameters ()
		:precondition
		(and
			( ON_B7_B1 )
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B1_B2_Q_Q_N
		:parameters ()
		:precondition
		(and
			( ON_B1_B2 )
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_Q_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B1_B2_N_Q_N
		:parameters ()
		:precondition
		(and
			( ON_B1_B2 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_Q_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B1_B2_A_Q_N
		:parameters ()
		:precondition
		(and
			( ON_B1_B2 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B1_B2_T_Q_N
		:parameters ()
		:precondition
		(and
			( ON_B1_B2 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_Q_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B1_B2_R_Q_N
		:parameters ()
		:precondition
		(and
			( ON_B1_B2 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_Q_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B1_B2_P_Q_N
		:parameters ()
		:precondition
		(and
			( ON_B1_B2 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_Q_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B1_B2_A_Q_N
		:parameters ()
		:precondition
		(and
			( ON_B1_B2 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B2_B2_Q_N_N
		:parameters ()
		:precondition
		(and
			( ON_B2_B2 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_N_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B2_B2_N_N_N
		:parameters ()
		:precondition
		(and
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_N_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B2_B2_A_N_N
		:parameters ()
		:precondition
		(and
			( ON_B2_B2 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B2_B2_T_N_N
		:parameters ()
		:precondition
		(and
			( ON_B2_B2 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_N_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B2_B2_R_N_N
		:parameters ()
		:precondition
		(and
			( ON_B2_B2 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_N_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B2_B2_P_N_N
		:parameters ()
		:precondition
		(and
			( ON_B2_B2 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_N_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B2_B2_A_N_N
		:parameters ()
		:precondition
		(and
			( ON_B2_B2 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B3_B2_Q_A_N
		:parameters ()
		:precondition
		(and
			( ON_B3_B2 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B3_B2_N_A_N
		:parameters ()
		:precondition
		(and
			( ON_B3_B2 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B3_B2_T_A_N
		:parameters ()
		:precondition
		(and
			( ON_B3_B2 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B3_B2_R_A_N
		:parameters ()
		:precondition
		(and
			( ON_B3_B2 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B4_B2_Q_T_N
		:parameters ()
		:precondition
		(and
			( ON_B4_B2 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_T_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B4_B2_N_T_N
		:parameters ()
		:precondition
		(and
			( ON_B4_B2 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_T_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B4_B2_A_T_N
		:parameters ()
		:precondition
		(and
			( ON_B4_B2 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B4_B2_T_T_N
		:parameters ()
		:precondition
		(and
			( ON_B4_B2 )
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_T_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B4_B2_R_T_N
		:parameters ()
		:precondition
		(and
			( ON_B4_B2 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_T_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B4_B2_P_T_N
		:parameters ()
		:precondition
		(and
			( ON_B4_B2 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_T_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B4_B2_A_T_N
		:parameters ()
		:precondition
		(and
			( ON_B4_B2 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B5_B2_Q_R_N
		:parameters ()
		:precondition
		(and
			( ON_B5_B2 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_R_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B5_B2_N_R_N
		:parameters ()
		:precondition
		(and
			( ON_B5_B2 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_R_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B5_B2_A_R_N
		:parameters ()
		:precondition
		(and
			( ON_B5_B2 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B5_B2_T_R_N
		:parameters ()
		:precondition
		(and
			( ON_B5_B2 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_R_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B5_B2_R_R_N
		:parameters ()
		:precondition
		(and
			( ON_B5_B2 )
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_R_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B5_B2_P_R_N
		:parameters ()
		:precondition
		(and
			( ON_B5_B2 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_R_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B5_B2_A_R_N
		:parameters ()
		:precondition
		(and
			( ON_B5_B2 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B6_B2_Q_P_N
		:parameters ()
		:precondition
		(and
			( ON_B6_B2 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_P_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B6_B2_N_P_N
		:parameters ()
		:precondition
		(and
			( ON_B6_B2 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_P_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B6_B2_T_P_N
		:parameters ()
		:precondition
		(and
			( ON_B6_B2 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_P_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B6_B2_R_P_N
		:parameters ()
		:precondition
		(and
			( ON_B6_B2 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_P_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B7_B2_Q_A_N
		:parameters ()
		:precondition
		(and
			( ON_B7_B2 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B7_B2_N_A_N
		:parameters ()
		:precondition
		(and
			( ON_B7_B2 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B7_B2_A_A_N
		:parameters ()
		:precondition
		(and
			( ON_B7_B2 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B7_B2_T_A_N
		:parameters ()
		:precondition
		(and
			( ON_B7_B2 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B7_B2_R_A_N
		:parameters ()
		:precondition
		(and
			( ON_B7_B2 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B7_B2_P_A_N
		:parameters ()
		:precondition
		(and
			( ON_B7_B2 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B1_B3_Q_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B3 )
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B1_B3_N_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B3 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B1_B3_A_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B3 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B1_B3_T_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B3 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B1_B3_R_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B3 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B1_B3_P_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B3 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B1_B3_A_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B3 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B2_B3_Q_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B3 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B2_B3_N_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B3 )
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B2_B3_A_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B3 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B2_B3_T_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B3 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B2_B3_R_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B3 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B2_B3_P_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B3 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B2_B3_A_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B3 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B3_B3_Q_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B3 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B3_B3_N_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B3 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B3_B3_T_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B3 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B3_B3_R_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B3 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B4_B3_Q_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B3 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B4_B3_N_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B3 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B4_B3_A_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B3 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B4_B3_T_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B3 )
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B4_B3_R_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B3 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B4_B3_P_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B3 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B4_B3_A_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B3 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B5_B3_Q_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B3 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B5_B3_N_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B3 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B5_B3_A_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B3 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B5_B3_T_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B3 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B5_B3_R_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B3 )
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B5_B3_P_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B3 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B5_B3_A_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B3 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B6_B3_Q_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B3 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B6_B3_N_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B3 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B6_B3_T_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B3 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B6_B3_R_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B3 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B7_B3_Q_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B3 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B7_B3_N_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B3 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B7_B3_A_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B3 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B7_B3_T_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B3 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B7_B3_R_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B3 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B7_B3_P_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B3 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B1_B4_Q_Q_T
		:parameters ()
		:precondition
		(and
			( ON_B1_B4 )
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_Q_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B1_B4_N_Q_T
		:parameters ()
		:precondition
		(and
			( ON_B1_B4 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_Q_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B1_B4_A_Q_T
		:parameters ()
		:precondition
		(and
			( ON_B1_B4 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B1_B4_T_Q_T
		:parameters ()
		:precondition
		(and
			( ON_B1_B4 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_Q_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B1_B4_R_Q_T
		:parameters ()
		:precondition
		(and
			( ON_B1_B4 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_Q_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B1_B4_P_Q_T
		:parameters ()
		:precondition
		(and
			( ON_B1_B4 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_Q_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B1_B4_A_Q_T
		:parameters ()
		:precondition
		(and
			( ON_B1_B4 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B2_B4_Q_N_T
		:parameters ()
		:precondition
		(and
			( ON_B2_B4 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_N_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B2_B4_N_N_T
		:parameters ()
		:precondition
		(and
			( ON_B2_B4 )
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_N_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B2_B4_A_N_T
		:parameters ()
		:precondition
		(and
			( ON_B2_B4 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B2_B4_T_N_T
		:parameters ()
		:precondition
		(and
			( ON_B2_B4 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_N_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B2_B4_R_N_T
		:parameters ()
		:precondition
		(and
			( ON_B2_B4 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_N_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B2_B4_P_N_T
		:parameters ()
		:precondition
		(and
			( ON_B2_B4 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_N_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B2_B4_A_N_T
		:parameters ()
		:precondition
		(and
			( ON_B2_B4 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B3_B4_Q_A_T
		:parameters ()
		:precondition
		(and
			( ON_B3_B4 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B3_B4_N_A_T
		:parameters ()
		:precondition
		(and
			( ON_B3_B4 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B3_B4_A_A_T
		:parameters ()
		:precondition
		(and
			( ON_B3_B4 )
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B3_B4_T_A_T
		:parameters ()
		:precondition
		(and
			( ON_B3_B4 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B3_B4_R_A_T
		:parameters ()
		:precondition
		(and
			( ON_B3_B4 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B3_B4_P_A_T
		:parameters ()
		:precondition
		(and
			( ON_B3_B4 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B3_B4_A_A_T
		:parameters ()
		:precondition
		(and
			( ON_B3_B4 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B4_B4_Q_T_T
		:parameters ()
		:precondition
		(and
			( ON_B4_B4 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_T_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B4_B4_N_T_T
		:parameters ()
		:precondition
		(and
			( ON_B4_B4 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_T_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B4_B4_A_T_T
		:parameters ()
		:precondition
		(and
			( ON_B4_B4 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B4_B4_T_T_T
		:parameters ()
		:precondition
		(and
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_T_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B4_B4_R_T_T
		:parameters ()
		:precondition
		(and
			( ON_B4_B4 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_T_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B4_B4_P_T_T
		:parameters ()
		:precondition
		(and
			( ON_B4_B4 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_T_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B4_B4_A_T_T
		:parameters ()
		:precondition
		(and
			( ON_B4_B4 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B5_B4_Q_R_T
		:parameters ()
		:precondition
		(and
			( ON_B5_B4 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_R_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B5_B4_N_R_T
		:parameters ()
		:precondition
		(and
			( ON_B5_B4 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_R_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B5_B4_T_R_T
		:parameters ()
		:precondition
		(and
			( ON_B5_B4 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_R_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B5_B4_R_R_T
		:parameters ()
		:precondition
		(and
			( ON_B5_B4 )
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_R_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B6_B4_Q_P_T
		:parameters ()
		:precondition
		(and
			( ON_B6_B4 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_P_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B6_B4_N_P_T
		:parameters ()
		:precondition
		(and
			( ON_B6_B4 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_P_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B6_B4_A_P_T
		:parameters ()
		:precondition
		(and
			( ON_B6_B4 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B6_B4_T_P_T
		:parameters ()
		:precondition
		(and
			( ON_B6_B4 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_P_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B6_B4_R_P_T
		:parameters ()
		:precondition
		(and
			( ON_B6_B4 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_P_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B6_B4_P_P_T
		:parameters ()
		:precondition
		(and
			( ON_B6_B4 )
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_P_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B6_B4_A_P_T
		:parameters ()
		:precondition
		(and
			( ON_B6_B4 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B7_B4_Q_A_T
		:parameters ()
		:precondition
		(and
			( ON_B7_B4 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B7_B4_N_A_T
		:parameters ()
		:precondition
		(and
			( ON_B7_B4 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B7_B4_A_A_T
		:parameters ()
		:precondition
		(and
			( ON_B7_B4 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B7_B4_T_A_T
		:parameters ()
		:precondition
		(and
			( ON_B7_B4 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B7_B4_R_A_T
		:parameters ()
		:precondition
		(and
			( ON_B7_B4 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B7_B4_P_A_T
		:parameters ()
		:precondition
		(and
			( ON_B7_B4 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B7_B4_A_A_T
		:parameters ()
		:precondition
		(and
			( ON_B7_B4 )
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B1_B5_Q_Q_R
		:parameters ()
		:precondition
		(and
			( ON_B1_B5 )
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_Q_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B1_B5_N_Q_R
		:parameters ()
		:precondition
		(and
			( ON_B1_B5 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_Q_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B1_B5_A_Q_R
		:parameters ()
		:precondition
		(and
			( ON_B1_B5 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B1_B5_T_Q_R
		:parameters ()
		:precondition
		(and
			( ON_B1_B5 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_Q_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B1_B5_R_Q_R
		:parameters ()
		:precondition
		(and
			( ON_B1_B5 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_Q_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B1_B5_P_Q_R
		:parameters ()
		:precondition
		(and
			( ON_B1_B5 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_Q_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B1_B5_A_Q_R
		:parameters ()
		:precondition
		(and
			( ON_B1_B5 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B2_B5_Q_N_R
		:parameters ()
		:precondition
		(and
			( ON_B2_B5 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_N_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B2_B5_N_N_R
		:parameters ()
		:precondition
		(and
			( ON_B2_B5 )
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_N_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B2_B5_A_N_R
		:parameters ()
		:precondition
		(and
			( ON_B2_B5 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B2_B5_T_N_R
		:parameters ()
		:precondition
		(and
			( ON_B2_B5 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_N_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B2_B5_R_N_R
		:parameters ()
		:precondition
		(and
			( ON_B2_B5 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_N_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B2_B5_P_N_R
		:parameters ()
		:precondition
		(and
			( ON_B2_B5 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_N_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B2_B5_A_N_R
		:parameters ()
		:precondition
		(and
			( ON_B2_B5 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B3_B5_Q_A_R
		:parameters ()
		:precondition
		(and
			( ON_B3_B5 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B3_B5_N_A_R
		:parameters ()
		:precondition
		(and
			( ON_B3_B5 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B3_B5_T_A_R
		:parameters ()
		:precondition
		(and
			( ON_B3_B5 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B3_B5_R_A_R
		:parameters ()
		:precondition
		(and
			( ON_B3_B5 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B4_B5_Q_T_R
		:parameters ()
		:precondition
		(and
			( ON_B4_B5 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_T_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B4_B5_N_T_R
		:parameters ()
		:precondition
		(and
			( ON_B4_B5 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_T_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B4_B5_A_T_R
		:parameters ()
		:precondition
		(and
			( ON_B4_B5 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B4_B5_T_T_R
		:parameters ()
		:precondition
		(and
			( ON_B4_B5 )
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_T_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B4_B5_R_T_R
		:parameters ()
		:precondition
		(and
			( ON_B4_B5 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_T_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B4_B5_P_T_R
		:parameters ()
		:precondition
		(and
			( ON_B4_B5 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_T_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B4_B5_A_T_R
		:parameters ()
		:precondition
		(and
			( ON_B4_B5 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B5_B5_Q_R_R
		:parameters ()
		:precondition
		(and
			( ON_B5_B5 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_R_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B5_B5_N_R_R
		:parameters ()
		:precondition
		(and
			( ON_B5_B5 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_R_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B5_B5_A_R_R
		:parameters ()
		:precondition
		(and
			( ON_B5_B5 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B5_B5_T_R_R
		:parameters ()
		:precondition
		(and
			( ON_B5_B5 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_R_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B5_B5_R_R_R
		:parameters ()
		:precondition
		(and
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_R_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B5_B5_P_R_R
		:parameters ()
		:precondition
		(and
			( ON_B5_B5 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_R_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B5_B5_A_R_R
		:parameters ()
		:precondition
		(and
			( ON_B5_B5 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B6_B5_Q_P_R
		:parameters ()
		:precondition
		(and
			( ON_B6_B5 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_P_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B6_B5_N_P_R
		:parameters ()
		:precondition
		(and
			( ON_B6_B5 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_P_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B6_B5_T_P_R
		:parameters ()
		:precondition
		(and
			( ON_B6_B5 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_P_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B6_B5_R_P_R
		:parameters ()
		:precondition
		(and
			( ON_B6_B5 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_P_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B7_B5_Q_A_R
		:parameters ()
		:precondition
		(and
			( ON_B7_B5 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B7_B5_N_A_R
		:parameters ()
		:precondition
		(and
			( ON_B7_B5 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B7_B5_A_A_R
		:parameters ()
		:precondition
		(and
			( ON_B7_B5 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B7_B5_T_A_R
		:parameters ()
		:precondition
		(and
			( ON_B7_B5 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B7_B5_R_A_R
		:parameters ()
		:precondition
		(and
			( ON_B7_B5 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B7_B5_P_A_R
		:parameters ()
		:precondition
		(and
			( ON_B7_B5 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B1_B6_Q_Q_P
		:parameters ()
		:precondition
		(and
			( ON_B1_B6 )
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_Q_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B1_B6_N_Q_P
		:parameters ()
		:precondition
		(and
			( ON_B1_B6 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_Q_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B1_B6_A_Q_P
		:parameters ()
		:precondition
		(and
			( ON_B1_B6 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B1_B6_T_Q_P
		:parameters ()
		:precondition
		(and
			( ON_B1_B6 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_Q_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B1_B6_R_Q_P
		:parameters ()
		:precondition
		(and
			( ON_B1_B6 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_Q_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B1_B6_P_Q_P
		:parameters ()
		:precondition
		(and
			( ON_B1_B6 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_Q_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B1_B6_A_Q_P
		:parameters ()
		:precondition
		(and
			( ON_B1_B6 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B2_B6_Q_N_P
		:parameters ()
		:precondition
		(and
			( ON_B2_B6 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_N_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B2_B6_N_N_P
		:parameters ()
		:precondition
		(and
			( ON_B2_B6 )
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_N_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B2_B6_A_N_P
		:parameters ()
		:precondition
		(and
			( ON_B2_B6 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B2_B6_T_N_P
		:parameters ()
		:precondition
		(and
			( ON_B2_B6 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_N_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B2_B6_R_N_P
		:parameters ()
		:precondition
		(and
			( ON_B2_B6 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_N_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B2_B6_P_N_P
		:parameters ()
		:precondition
		(and
			( ON_B2_B6 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_N_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B2_B6_A_N_P
		:parameters ()
		:precondition
		(and
			( ON_B2_B6 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B3_B6_Q_A_P
		:parameters ()
		:precondition
		(and
			( ON_B3_B6 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B3_B6_N_A_P
		:parameters ()
		:precondition
		(and
			( ON_B3_B6 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B3_B6_T_A_P
		:parameters ()
		:precondition
		(and
			( ON_B3_B6 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B3_B6_R_A_P
		:parameters ()
		:precondition
		(and
			( ON_B3_B6 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B4_B6_Q_T_P
		:parameters ()
		:precondition
		(and
			( ON_B4_B6 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_T_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B4_B6_N_T_P
		:parameters ()
		:precondition
		(and
			( ON_B4_B6 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_T_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B4_B6_A_T_P
		:parameters ()
		:precondition
		(and
			( ON_B4_B6 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B4_B6_T_T_P
		:parameters ()
		:precondition
		(and
			( ON_B4_B6 )
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_T_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B4_B6_R_T_P
		:parameters ()
		:precondition
		(and
			( ON_B4_B6 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_T_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B4_B6_P_T_P
		:parameters ()
		:precondition
		(and
			( ON_B4_B6 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_T_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B4_B6_A_T_P
		:parameters ()
		:precondition
		(and
			( ON_B4_B6 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B5_B6_Q_R_P
		:parameters ()
		:precondition
		(and
			( ON_B5_B6 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_R_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B5_B6_N_R_P
		:parameters ()
		:precondition
		(and
			( ON_B5_B6 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_R_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B5_B6_A_R_P
		:parameters ()
		:precondition
		(and
			( ON_B5_B6 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B5_B6_T_R_P
		:parameters ()
		:precondition
		(and
			( ON_B5_B6 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_R_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B5_B6_R_R_P
		:parameters ()
		:precondition
		(and
			( ON_B5_B6 )
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_R_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B5_B6_P_R_P
		:parameters ()
		:precondition
		(and
			( ON_B5_B6 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_R_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B5_B6_A_R_P
		:parameters ()
		:precondition
		(and
			( ON_B5_B6 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B6_B6_Q_P_P
		:parameters ()
		:precondition
		(and
			( ON_B6_B6 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_P_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B6_B6_N_P_P
		:parameters ()
		:precondition
		(and
			( ON_B6_B6 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_P_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B6_B6_T_P_P
		:parameters ()
		:precondition
		(and
			( ON_B6_B6 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_P_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B6_B6_R_P_P
		:parameters ()
		:precondition
		(and
			( ON_B6_B6 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_P_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B7_B6_Q_A_P
		:parameters ()
		:precondition
		(and
			( ON_B7_B6 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B7_B6_N_A_P
		:parameters ()
		:precondition
		(and
			( ON_B7_B6 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B7_B6_A_A_P
		:parameters ()
		:precondition
		(and
			( ON_B7_B6 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B7_B6_T_A_P
		:parameters ()
		:precondition
		(and
			( ON_B7_B6 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B7_B6_R_A_P
		:parameters ()
		:precondition
		(and
			( ON_B7_B6 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B7_B6_P_A_P
		:parameters ()
		:precondition
		(and
			( ON_B7_B6 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B1_B7_Q_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B7 )
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B1_B7_N_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B7 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B1_B7_A_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B7 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B1_B7_T_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B7 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B1_B7_R_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B7 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B1_B7_P_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B7 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B1_B7_A_Q_A
		:parameters ()
		:precondition
		(and
			( ON_B1_B7 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_Q_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B2_B7_Q_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B7 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B2_B7_N_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B7 )
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B2_B7_A_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B7 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B2_B7_T_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B7 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B2_B7_R_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B7 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B2_B7_P_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B7 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B2_B7_A_N_A
		:parameters ()
		:precondition
		(and
			( ON_B2_B7 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B3_B7_Q_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B7 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B3_B7_N_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B7 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B3_B7_A_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B7 )
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B3_B7_T_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B7 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B3_B7_R_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B7 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B3_B7_P_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B7 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B3_B7_A_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B7 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B4_B7_Q_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B7 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B4_B7_N_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B7 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B4_B7_A_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B7 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B4_B7_T_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B7 )
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B4_B7_R_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B7 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B4_B7_P_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B7 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B4_B7_A_T_A
		:parameters ()
		:precondition
		(and
			( ON_B4_B7 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_T_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B5_B7_Q_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B7 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B5_B7_N_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B7 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B5_B7_A_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B7 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B5_B7_T_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B7 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B5_B7_R_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B7 )
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B5_B7_P_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B7 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B5_B7_A_R_A
		:parameters ()
		:precondition
		(and
			( ON_B5_B7 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B6_B7_Q_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B7 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B6_B7_N_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B7 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B6_B7_A_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B7 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B6_B7_T_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B7 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B6_B7_R_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B7 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B6_B7_P_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B7 )
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B6_B7_A_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B7 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B1_B7_B7_Q_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B7 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_Q_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B2_B7_B7_N_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B7 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_N_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B7_B7_A_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B7 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B4_B7_B7_T_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B7 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_T_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B5_B7_B7_R_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B7 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_R_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B7_B7_P_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B7 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B7_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( R_HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( CLEAR_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B7_B4 ))
			(not ( AT_B7_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B7_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( R_HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( CLEAR_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B7_B1 ))
			(not ( AT_B7_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B6_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( R_HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B6 )
			( CLEAR_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B6_B7 ))
			(not ( AT_B6_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B6_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( R_HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B6 )
			( CLEAR_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B6_B4 ))
			(not ( AT_B6_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B6_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( R_HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B6 )
			( CLEAR_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B6_B1 ))
			(not ( AT_B6_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B5_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( R_HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B5 )
			( CLEAR_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B5_B7 ))
			(not ( AT_B5_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B5_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( R_HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B5 )
			( CLEAR_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B5_B6 ))
			(not ( AT_B5_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B5_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( R_HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HANDEMPTY ))
			(not ( ON_B5_B5 ))
			(not ( AT_B5_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B5_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( R_HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B5 )
			( CLEAR_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B5_B3 ))
			(not ( AT_B5_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B5_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( R_HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B5 )
			( CLEAR_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B5_B2 ))
			(not ( AT_B5_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B5_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( R_HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B5 )
			( CLEAR_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B5_B1 ))
			(not ( AT_B5_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B4_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( R_HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B4 )
			( CLEAR_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B4_B7 ))
			(not ( AT_B4_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B4_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( R_HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B4 )
			( CLEAR_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B4_B6 ))
			(not ( AT_B4_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B4_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( R_HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B4 )
			( CLEAR_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B4_B5 ))
			(not ( AT_B4_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B4_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( R_HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HANDEMPTY ))
			(not ( ON_B4_B4 ))
			(not ( AT_B4_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B4_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( R_HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B4 )
			( CLEAR_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B4_B3 ))
			(not ( AT_B4_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B4_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( R_HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B4 )
			( CLEAR_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B4_B2 ))
			(not ( AT_B4_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B4_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( R_HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B4 )
			( CLEAR_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B4_B1 ))
			(not ( AT_B4_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B3_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( R_HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B3 )
			( CLEAR_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B3_B7 ))
			(not ( AT_B3_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B3_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( R_HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B3 )
			( CLEAR_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B3_B4 ))
			(not ( AT_B3_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B3_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( R_HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B3 )
			( CLEAR_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B3_B1 ))
			(not ( AT_B3_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B2_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( R_HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B2 )
			( CLEAR_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B2_B7 ))
			(not ( AT_B2_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B2_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( R_HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B2 )
			( CLEAR_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B2_B6 ))
			(not ( AT_B2_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B2_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( R_HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B2 )
			( CLEAR_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B2_B5 ))
			(not ( AT_B2_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B2_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( R_HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B2 )
			( CLEAR_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B2_B4 ))
			(not ( AT_B2_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B2_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( R_HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B2 )
			( CLEAR_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B2_B3 ))
			(not ( AT_B2_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B2_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( R_HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HANDEMPTY ))
			(not ( ON_B2_B2 ))
			(not ( AT_B2_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B1_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( R_HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B1 )
			( CLEAR_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B1_B7 ))
			(not ( AT_B1_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B1_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( R_HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B1 )
			( CLEAR_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B1_B6 ))
			(not ( AT_B1_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B1_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( R_HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B1 )
			( CLEAR_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B1_B5 ))
			(not ( AT_B1_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B1_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( R_HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B1 )
			( CLEAR_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B1_B4 ))
			(not ( AT_B1_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B1_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( R_HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B1 )
			( CLEAR_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B1_B3 ))
			(not ( AT_B1_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B1_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( R_HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B1 )
			( CLEAR_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B1_B2 ))
			(not ( AT_B1_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B1_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( R_HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HANDEMPTY ))
			(not ( ON_B1_B1 ))
			(not ( AT_B1_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B7_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( R_HANDEMPTY )
			( ON_B7_B4 )
			( AT_B7_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( CLEAR_B4 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B7_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( R_HANDEMPTY )
			( ON_B7_B1 )
			( AT_B7_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( CLEAR_B1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B6_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( R_HANDEMPTY )
			( ON_B6_B7 )
			( AT_B6_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( CLEAR_B7 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B6_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( R_HANDEMPTY )
			( ON_B6_B4 )
			( AT_B6_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( CLEAR_B4 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B6_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( R_HANDEMPTY )
			( ON_B6_B1 )
			( AT_B6_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( CLEAR_B1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B5_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( R_HANDEMPTY )
			( ON_B5_B7 )
			( AT_B5_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( CLEAR_B7 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B5_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( R_HANDEMPTY )
			( ON_B5_B6 )
			( AT_B5_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( CLEAR_B6 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B5_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HANDEMPTY )
			( ON_B5_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B5_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( R_HANDEMPTY )
			( ON_B5_B4 )
			( AT_B5_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( CLEAR_B4 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B5_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( R_HANDEMPTY )
			( ON_B5_B3 )
			( AT_B5_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( CLEAR_B3 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B5_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( R_HANDEMPTY )
			( ON_B5_B2 )
			( AT_B5_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( CLEAR_B2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B5_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( R_HANDEMPTY )
			( ON_B5_B1 )
			( AT_B5_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( CLEAR_B1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B4_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( R_HANDEMPTY )
			( ON_B4_B7 )
			( AT_B4_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( CLEAR_B7 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B4_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( R_HANDEMPTY )
			( ON_B4_B6 )
			( AT_B4_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( CLEAR_B6 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B4_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( R_HANDEMPTY )
			( ON_B4_B5 )
			( AT_B4_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( CLEAR_B5 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B4_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HANDEMPTY )
			( ON_B4_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B4_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( R_HANDEMPTY )
			( ON_B4_B3 )
			( AT_B4_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( CLEAR_B3 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B4_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( R_HANDEMPTY )
			( ON_B4_B2 )
			( AT_B4_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( CLEAR_B2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B4_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( R_HANDEMPTY )
			( ON_B4_B1 )
			( AT_B4_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( CLEAR_B1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B3_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( R_HANDEMPTY )
			( ON_B3_B7 )
			( AT_B3_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( CLEAR_B7 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B3_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( R_HANDEMPTY )
			( ON_B3_B4 )
			( AT_B3_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( CLEAR_B4 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B3_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( R_HANDEMPTY )
			( ON_B3_B1 )
			( AT_B3_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( CLEAR_B1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B2_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( R_HANDEMPTY )
			( ON_B2_B7 )
			( AT_B2_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( CLEAR_B7 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B2_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( R_HANDEMPTY )
			( ON_B2_B6 )
			( AT_B2_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( CLEAR_B6 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B2_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( R_HANDEMPTY )
			( ON_B2_B5 )
			( AT_B2_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( CLEAR_B5 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B2_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( R_HANDEMPTY )
			( ON_B2_B4 )
			( AT_B2_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( CLEAR_B4 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B2_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( R_HANDEMPTY )
			( ON_B2_B3 )
			( AT_B2_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( CLEAR_B3 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B2_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HANDEMPTY )
			( ON_B2_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B2_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( R_HANDEMPTY )
			( ON_B2_B1 )
			( AT_B2_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( CLEAR_B1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B1_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( R_HANDEMPTY )
			( ON_B1_B7 )
			( AT_B1_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( CLEAR_B7 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B1_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( R_HANDEMPTY )
			( ON_B1_B6 )
			( AT_B1_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( CLEAR_B6 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B1_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( R_HANDEMPTY )
			( ON_B1_B5 )
			( AT_B1_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( CLEAR_B5 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B1_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( R_HANDEMPTY )
			( ON_B1_B4 )
			( AT_B1_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( CLEAR_B4 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B1_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( R_HANDEMPTY )
			( ON_B1_B3 )
			( AT_B1_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( CLEAR_B3 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B1_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( R_HANDEMPTY )
			( ON_B1_B2 )
			( AT_B1_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( CLEAR_B2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B1_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HANDEMPTY )
			( ON_B1_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B5_M1_R1
		:parameters ()
		:precondition
		(and
			( FREE_M1 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( R_HANDEMPTY )
			( ONTABLE_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( FREE_M1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B4_M1_R1
		:parameters ()
		:precondition
		(and
			( FREE_M1 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( R_HANDEMPTY )
			( ONTABLE_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( FREE_M1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B2_M1_R1
		:parameters ()
		:precondition
		(and
			( FREE_M1 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( R_HANDEMPTY )
			( ONTABLE_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( FREE_M1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B1_M1_R1
		:parameters ()
		:precondition
		(and
			( FREE_M1 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( R_HANDEMPTY )
			( ONTABLE_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( FREE_M1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B5_M2_R1
		:parameters ()
		:precondition
		(and
			( FREE_M2 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B5 )
			( R_HANDEMPTY )
			( ONTABLE_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B5 ))
			(not ( FREE_M2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B4_M2_R1
		:parameters ()
		:precondition
		(and
			( FREE_M2 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( R_HANDEMPTY )
			( ONTABLE_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B4 ))
			(not ( FREE_M2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B2_M2_R1
		:parameters ()
		:precondition
		(and
			( FREE_M2 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B2 )
			( R_HANDEMPTY )
			( ONTABLE_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B2 ))
			(not ( FREE_M2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B1_M2_R1
		:parameters ()
		:precondition
		(and
			( FREE_M2 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( R_HANDEMPTY )
			( ONTABLE_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B1 ))
			(not ( FREE_M2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PICKUP_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( R_HANDEMPTY )
			( ONTABLE_B7 )
			( CLEAR_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( ONTABLE_B7 ))
			(not ( CLEAR_B7 ))
			(not ( R_HANDEMPTY ))
			(not ( AT_B7_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PICKUP_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( R_HANDEMPTY )
			( ONTABLE_B4 )
			( CLEAR_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( ONTABLE_B4 ))
			(not ( CLEAR_B4 ))
			(not ( R_HANDEMPTY ))
			(not ( AT_B4_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PICKUP_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( R_HANDEMPTY )
			( ONTABLE_B1 )
			( CLEAR_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( ONTABLE_B1 ))
			(not ( CLEAR_B1 ))
			(not ( R_HANDEMPTY ))
			(not ( AT_B1_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B7_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HANDEMPTY ))
			(not ( ON_B7_B7 ))
			(not ( AT_B7_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B7_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( CLEAR_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( HANDEMPTY ))
			(not ( ON_B7_B6 ))
			(not ( AT_B7_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B7_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( CLEAR_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( HANDEMPTY ))
			(not ( ON_B7_B5 ))
			(not ( AT_B7_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B7_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( CLEAR_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( HANDEMPTY ))
			(not ( ON_B7_B4 ))
			(not ( AT_B7_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B7_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( CLEAR_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( HANDEMPTY ))
			(not ( ON_B7_B3 ))
			(not ( AT_B7_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B7_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( CLEAR_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( HANDEMPTY ))
			(not ( ON_B7_B2 ))
			(not ( AT_B7_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B7_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( CLEAR_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( HANDEMPTY ))
			(not ( ON_B7_B1 ))
			(not ( AT_B7_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B6_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B6 )
			( CLEAR_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( HANDEMPTY ))
			(not ( ON_B6_B7 ))
			(not ( AT_B6_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B6_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HANDEMPTY ))
			(not ( ON_B6_B6 ))
			(not ( AT_B6_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B6_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B6 )
			( CLEAR_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( HANDEMPTY ))
			(not ( ON_B6_B5 ))
			(not ( AT_B6_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B6_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B6 )
			( CLEAR_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( HANDEMPTY ))
			(not ( ON_B6_B4 ))
			(not ( AT_B6_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B6_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B6 )
			( CLEAR_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( HANDEMPTY ))
			(not ( ON_B6_B3 ))
			(not ( AT_B6_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B6_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B6 )
			( CLEAR_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( HANDEMPTY ))
			(not ( ON_B6_B2 ))
			(not ( AT_B6_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B6_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B6 )
			( CLEAR_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( HANDEMPTY ))
			(not ( ON_B6_B1 ))
			(not ( AT_B6_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B5_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B5 )
			( CLEAR_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( HANDEMPTY ))
			(not ( ON_B5_B4 ))
			(not ( AT_B5_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B4_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B4 )
			( CLEAR_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( HANDEMPTY ))
			(not ( ON_B4_B7 ))
			(not ( AT_B4_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B4_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B4 )
			( CLEAR_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( HANDEMPTY ))
			(not ( ON_B4_B6 ))
			(not ( AT_B4_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B4_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B4 )
			( CLEAR_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( HANDEMPTY ))
			(not ( ON_B4_B5 ))
			(not ( AT_B4_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B4_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HANDEMPTY ))
			(not ( ON_B4_B4 ))
			(not ( AT_B4_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B4_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B4 )
			( CLEAR_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( HANDEMPTY ))
			(not ( ON_B4_B3 ))
			(not ( AT_B4_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B4_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B4 )
			( CLEAR_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( HANDEMPTY ))
			(not ( ON_B4_B2 ))
			(not ( AT_B4_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B4_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( HANDEMPTY )
			( CLEAR_B4 )
			( ON_B4_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B4 )
			( CLEAR_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B4 ))
			(not ( HANDEMPTY ))
			(not ( ON_B4_B1 ))
			(not ( AT_B4_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B3_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B3 )
			( CLEAR_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( HANDEMPTY ))
			(not ( ON_B3_B7 ))
			(not ( AT_B3_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B3_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B3 )
			( CLEAR_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( HANDEMPTY ))
			(not ( ON_B3_B6 ))
			(not ( AT_B3_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B3_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B3 )
			( CLEAR_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( HANDEMPTY ))
			(not ( ON_B3_B5 ))
			(not ( AT_B3_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B3_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B3 )
			( CLEAR_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( HANDEMPTY ))
			(not ( ON_B3_B4 ))
			(not ( AT_B3_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B3_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HANDEMPTY ))
			(not ( ON_B3_B3 ))
			(not ( AT_B3_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B3_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B3 )
			( CLEAR_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( HANDEMPTY ))
			(not ( ON_B3_B2 ))
			(not ( AT_B3_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B3_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B3 )
			( CLEAR_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( HANDEMPTY ))
			(not ( ON_B3_B1 ))
			(not ( AT_B3_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B2_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B2 )
			( CLEAR_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( HANDEMPTY ))
			(not ( ON_B2_B1 ))
			(not ( AT_B2_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B1_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B1 )
			( CLEAR_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( HANDEMPTY ))
			(not ( ON_B1_B7 ))
			(not ( AT_B1_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B1_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B1 )
			( CLEAR_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( HANDEMPTY ))
			(not ( ON_B1_B6 ))
			(not ( AT_B1_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B1_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B1 )
			( CLEAR_B5 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( HANDEMPTY ))
			(not ( ON_B1_B5 ))
			(not ( AT_B1_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B1_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B1 )
			( CLEAR_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( HANDEMPTY ))
			(not ( ON_B1_B4 ))
			(not ( AT_B1_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B1_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B1 )
			( CLEAR_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( HANDEMPTY ))
			(not ( ON_B1_B3 ))
			(not ( AT_B1_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B1_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B1 )
			( CLEAR_B2 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( CLEAR_B1 ))
			(not ( HANDEMPTY ))
			(not ( ON_B1_B2 ))
			(not ( AT_B1_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action UNSTACK_B1_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( HANDEMPTY )
			( CLEAR_B1 )
			( ON_B1_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HANDEMPTY ))
			(not ( ON_B1_B1 ))
			(not ( AT_B1_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B7_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_B7_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B7 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B7_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( HANDEMPTY )
			( ON_B7_B6 )
			( AT_B7_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B7 ))
			(not ( CLEAR_B6 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B7_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( HANDEMPTY )
			( ON_B7_B5 )
			( AT_B7_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B7 ))
			(not ( CLEAR_B5 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B7_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( HANDEMPTY )
			( ON_B7_B4 )
			( AT_B7_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B7 ))
			(not ( CLEAR_B4 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B7_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( HANDEMPTY )
			( ON_B7_B3 )
			( AT_B7_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B7 ))
			(not ( CLEAR_B3 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B7_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( HANDEMPTY )
			( ON_B7_B2 )
			( AT_B7_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B7 ))
			(not ( CLEAR_B2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B7_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( HANDEMPTY )
			( ON_B7_B1 )
			( AT_B7_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B7 ))
			(not ( CLEAR_B1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B6_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( HANDEMPTY )
			( ON_B6_B7 )
			( AT_B6_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B6 ))
			(not ( CLEAR_B7 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B6_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_B6_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B6 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B6_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( HANDEMPTY )
			( ON_B6_B5 )
			( AT_B6_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B6 ))
			(not ( CLEAR_B5 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B6_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( HANDEMPTY )
			( ON_B6_B4 )
			( AT_B6_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B6 ))
			(not ( CLEAR_B4 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B6_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( HANDEMPTY )
			( ON_B6_B3 )
			( AT_B6_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B6 ))
			(not ( CLEAR_B3 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B6_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( HANDEMPTY )
			( ON_B6_B2 )
			( AT_B6_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B6 ))
			(not ( CLEAR_B2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B6_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( HANDEMPTY )
			( ON_B6_B1 )
			( AT_B6_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B6 ))
			(not ( CLEAR_B1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B4_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( HANDEMPTY )
			( ON_B4_B7 )
			( AT_B4_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B4 ))
			(not ( CLEAR_B7 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B4_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( HANDEMPTY )
			( ON_B4_B6 )
			( AT_B4_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B4 ))
			(not ( CLEAR_B6 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B4_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( HANDEMPTY )
			( ON_B4_B5 )
			( AT_B4_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B4 ))
			(not ( CLEAR_B5 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B4_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_B4_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B4 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B4_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( HANDEMPTY )
			( ON_B4_B3 )
			( AT_B4_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B4 ))
			(not ( CLEAR_B3 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B4_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( HANDEMPTY )
			( ON_B4_B2 )
			( AT_B4_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B4 ))
			(not ( CLEAR_B2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B4_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( HANDEMPTY )
			( ON_B4_B1 )
			( AT_B4_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B4 ))
			(not ( CLEAR_B1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B3_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( HANDEMPTY )
			( ON_B3_B7 )
			( AT_B3_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B3 ))
			(not ( CLEAR_B7 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B3_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( HANDEMPTY )
			( ON_B3_B6 )
			( AT_B3_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B3 ))
			(not ( CLEAR_B6 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B3_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( HANDEMPTY )
			( ON_B3_B5 )
			( AT_B3_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B3 ))
			(not ( CLEAR_B5 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B3_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( HANDEMPTY )
			( ON_B3_B4 )
			( AT_B3_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B3 ))
			(not ( CLEAR_B4 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B3_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_B3_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B3 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B3_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( HANDEMPTY )
			( ON_B3_B2 )
			( AT_B3_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B3 ))
			(not ( CLEAR_B2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B3_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( HANDEMPTY )
			( ON_B3_B1 )
			( AT_B3_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B3 ))
			(not ( CLEAR_B1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B1_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( HANDEMPTY )
			( ON_B1_B7 )
			( AT_B1_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B1 ))
			(not ( CLEAR_B7 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B1_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( HANDEMPTY )
			( ON_B1_B6 )
			( AT_B1_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B1 ))
			(not ( CLEAR_B6 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B1_B5_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( HANDEMPTY )
			( ON_B1_B5 )
			( AT_B1_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B1 ))
			(not ( CLEAR_B5 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B1_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( CLEAR_B4 )
			( HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( HANDEMPTY )
			( ON_B1_B4 )
			( AT_B1_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B1 ))
			(not ( CLEAR_B4 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B1_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( HANDEMPTY )
			( ON_B1_B3 )
			( AT_B1_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B1 ))
			(not ( CLEAR_B3 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B1_B2_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( HANDEMPTY )
			( ON_B1_B2 )
			( AT_B1_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B1 ))
			(not ( CLEAR_B2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action STACK_B1_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( CLEAR_B1 )
			( HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_B1_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PUTDOWN_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( HANDEMPTY )
			( ONTABLE_B7 )
			( AT_B7_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B7 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PUTDOWN_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( HANDEMPTY )
			( ONTABLE_B6 )
			( AT_B6_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B6 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PUTDOWN_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( HOLDING_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B4 )
			( HANDEMPTY )
			( ONTABLE_B4 )
			( AT_B4_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B4 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PUTDOWN_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( HANDEMPTY )
			( ONTABLE_B3 )
			( AT_B3_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B3 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PUTDOWN_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( HOLDING_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B1 )
			( HANDEMPTY )
			( ONTABLE_B1 )
			( AT_B1_R1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( HOLDING_B1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PICKUP_FAR_B7_R2
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R2 )
			( HANDEMPTY )
			( ONTABLE_B7 )
			( CLEAR_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(DONE)
			(not ( ONTABLE_B7 ))
			(not ( CLEAR_B7 ))
			(not ( HANDEMPTY ))
			(not ( AT_B7_R2 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PICKUP_B7_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( HANDEMPTY )
			( ONTABLE_B7 )
			( CLEAR_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B7 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( ONTABLE_B7 ))
			(not ( CLEAR_B7 ))
			(not ( HANDEMPTY ))
			(not ( AT_B7_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PICKUP_B6_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( HANDEMPTY )
			( ONTABLE_B6 )
			( CLEAR_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B6 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( ONTABLE_B6 ))
			(not ( CLEAR_B6 ))
			(not ( HANDEMPTY ))
			(not ( AT_B6_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PICKUP_B4_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B4_R1 )
			( HANDEMPTY )
			( ONTABLE_B4 )
			( CLEAR_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B4 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( ONTABLE_B4 ))
			(not ( CLEAR_B4 ))
			(not ( HANDEMPTY ))
			(not ( AT_B4_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PICKUP_B3_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( HANDEMPTY )
			( ONTABLE_B3 )
			( CLEAR_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B3 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( ONTABLE_B3 ))
			(not ( CLEAR_B3 ))
			(not ( HANDEMPTY ))
			(not ( AT_B3_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action PICKUP_B1_R1
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
			( AT_B1_R1 )
			( HANDEMPTY )
			( ONTABLE_B1 )
			( CLEAR_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B1 )
			( ROBOT_CAN_PREP_ACTION )
			(not ( ONTABLE_B1 ))
			(not ( CLEAR_B1 ))
			(not ( HANDEMPTY ))
			(not ( AT_B1_R1 ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action NOOP
		:parameters ()
		:precondition
		(and
			( HUMAN_CAN_PREP_ACTION )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROBOT_CAN_PREP_ACTION )
		)
	)
	(:action ROBOT_NOOP
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HUMAN_CAN_PREP_ACTION )
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B2_B1_A_N_Q
		:parameters ()
		:precondition
		(and
			( ON_B2_B1 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B2_B1_P_N_Q
		:parameters ()
		:precondition
		(and
			( ON_B2_B1 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_N_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B2_B1_A_N_Q
		:parameters ()
		:precondition
		(and
			( ON_B2_B1 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_N_Q )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B3_B2_A_A_N
		:parameters ()
		:precondition
		(and
			( ON_B3_B2 )
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B3_B2_P_A_N
		:parameters ()
		:precondition
		(and
			( ON_B3_B2 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B3_B2_A_A_N
		:parameters ()
		:precondition
		(and
			( ON_B3_B2 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B6_B2_A_P_N
		:parameters ()
		:precondition
		(and
			( ON_B6_B2 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B6_B2_P_P_N
		:parameters ()
		:precondition
		(and
			( ON_B6_B2 )
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_P_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B6_B2_A_P_N
		:parameters ()
		:precondition
		(and
			( ON_B6_B2 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B7_B2_A_A_N
		:parameters ()
		:precondition
		(and
			( ON_B7_B2 )
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_N )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B3_B3_A_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B3_B3_P_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B3 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B3_B3_A_A_A
		:parameters ()
		:precondition
		(and
			( ON_B3_B3 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B6_B3_A_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B3 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B6_B3_P_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B3 )
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B6_B3_A_P_A
		:parameters ()
		:precondition
		(and
			( ON_B6_B3 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B7_B3_A_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B3 )
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B5_B4_A_R_T
		:parameters ()
		:precondition
		(and
			( ON_B5_B4 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B5_B4_P_R_T
		:parameters ()
		:precondition
		(and
			( ON_B5_B4 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_R_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B5_B4_A_R_T
		:parameters ()
		:precondition
		(and
			( ON_B5_B4 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_R_T )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B3_B5_A_A_R
		:parameters ()
		:precondition
		(and
			( ON_B3_B5 )
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B3_B5_P_A_R
		:parameters ()
		:precondition
		(and
			( ON_B3_B5 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B3_B5_A_A_R
		:parameters ()
		:precondition
		(and
			( ON_B3_B5 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B6_B5_A_P_R
		:parameters ()
		:precondition
		(and
			( ON_B6_B5 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B6_B5_P_P_R
		:parameters ()
		:precondition
		(and
			( ON_B6_B5 )
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_P_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B6_B5_A_P_R
		:parameters ()
		:precondition
		(and
			( ON_B6_B5 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B7_B5_A_A_R
		:parameters ()
		:precondition
		(and
			( ON_B7_B5 )
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_R )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B3_B6_A_A_P
		:parameters ()
		:precondition
		(and
			( ON_B3_B6 )
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B3_B6_P_A_P
		:parameters ()
		:precondition
		(and
			( ON_B3_B6 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B3_B6_A_A_P
		:parameters ()
		:precondition
		(and
			( ON_B3_B6 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B3_B6_B6_A_P_P
		:parameters ()
		:precondition
		(and
			( ON_B6_B6 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B6_B6_B6_P_P_P
		:parameters ()
		:precondition
		(and
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_P_P_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B6_B6_A_P_P
		:parameters ()
		:precondition
		(and
			( ON_B6_B6 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_P_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B7_B6_A_A_P
		:parameters ()
		:precondition
		(and
			( ON_B7_B6 )
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_P )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action THREE_LETTER_WORD_FORMED_B7_B7_B7_A_A_A
		:parameters ()
		:precondition
		(and
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD_FORMED_A_A_A )
			(not ( ROBOT_CAN_PREP_ACTION ))
			(not ( HUMAN_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B7_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( R_HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HANDEMPTY ))
			(not ( ON_B7_B7 ))
			(not ( AT_B7_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B7_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( R_HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( CLEAR_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B7_B6 ))
			(not ( AT_B7_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B7_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( R_HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( CLEAR_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B7_B5 ))
			(not ( AT_B7_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B7_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( R_HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( CLEAR_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B7_B3 ))
			(not ( AT_B7_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B7_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( R_HANDEMPTY )
			( CLEAR_B7 )
			( ON_B7_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( CLEAR_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B7 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B7_B2 ))
			(not ( AT_B7_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B6_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( R_HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HANDEMPTY ))
			(not ( ON_B6_B6 ))
			(not ( AT_B6_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B6_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( R_HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B6 )
			( CLEAR_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B6_B5 ))
			(not ( AT_B6_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B6_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( R_HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B6 )
			( CLEAR_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B6_B3 ))
			(not ( AT_B6_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B6_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( R_HANDEMPTY )
			( CLEAR_B6 )
			( ON_B6_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B6 )
			( CLEAR_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B6 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B6_B2 ))
			(not ( AT_B6_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B5_B4_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( R_HANDEMPTY )
			( CLEAR_B5 )
			( ON_B5_B4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B5 )
			( CLEAR_B4 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B5 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B5_B4 ))
			(not ( AT_B5_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B3_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( R_HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B3 )
			( CLEAR_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B3_B6 ))
			(not ( AT_B3_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B3_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( R_HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B3 )
			( CLEAR_B5 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B3_B5 ))
			(not ( AT_B3_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B3_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( R_HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HANDEMPTY ))
			(not ( ON_B3_B3 ))
			(not ( AT_B3_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B3_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( R_HANDEMPTY )
			( CLEAR_B3 )
			( ON_B3_B2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B3 )
			( CLEAR_B2 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B3 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B3_B2 ))
			(not ( AT_B3_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_UNSTACK_B2_B1_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( R_HANDEMPTY )
			( CLEAR_B2 )
			( ON_B2_B1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B2 )
			( CLEAR_B1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( CLEAR_B2 ))
			(not ( R_HANDEMPTY ))
			(not ( ON_B2_B1 ))
			(not ( AT_B2_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B7_B7_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R1 )
			( CLEAR_B7 )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HANDEMPTY )
			( ON_B7_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B7_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( R_HANDEMPTY )
			( ON_B7_B6 )
			( AT_B7_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( CLEAR_B6 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B7_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( R_HANDEMPTY )
			( ON_B7_B5 )
			( AT_B7_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( CLEAR_B5 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B7_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( R_HANDEMPTY )
			( ON_B7_B3 )
			( AT_B7_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( CLEAR_B3 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B7_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( R_HANDEMPTY )
			( ON_B7_B2 )
			( AT_B7_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( CLEAR_B2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B6_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HANDEMPTY )
			( ON_B6_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B6_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( R_HANDEMPTY )
			( ON_B6_B5 )
			( AT_B6_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( CLEAR_B5 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B6_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( R_HANDEMPTY )
			( ON_B6_B3 )
			( AT_B6_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( CLEAR_B3 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B6_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( R_HANDEMPTY )
			( ON_B6_B2 )
			( AT_B6_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( CLEAR_B2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B3_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( CLEAR_B6 )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( R_HANDEMPTY )
			( ON_B3_B6 )
			( AT_B3_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( CLEAR_B6 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B3_B5_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B5_R1 )
			( CLEAR_B5 )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( R_HANDEMPTY )
			( ON_B3_B5 )
			( AT_B3_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( CLEAR_B5 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B3_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( CLEAR_B3 )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HANDEMPTY )
			( ON_B3_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_STACK_B3_B2_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B2_R1 )
			( CLEAR_B2 )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( R_HANDEMPTY )
			( ON_B3_B2 )
			( AT_B3_R1 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( CLEAR_B2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B7_M1_R1
		:parameters ()
		:precondition
		(and
			( FREE_M1 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( R_HANDEMPTY )
			( ONTABLE_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( FREE_M1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B6_M1_R1
		:parameters ()
		:precondition
		(and
			( FREE_M1 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( R_HANDEMPTY )
			( ONTABLE_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( FREE_M1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B3_M1_R1
		:parameters ()
		:precondition
		(and
			( FREE_M1 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( R_HANDEMPTY )
			( ONTABLE_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( FREE_M1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B7_M2_R1
		:parameters ()
		:precondition
		(and
			( FREE_M2 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B7 )
			( R_HANDEMPTY )
			( ONTABLE_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B7 ))
			(not ( FREE_M2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B6_M2_R1
		:parameters ()
		:precondition
		(and
			( FREE_M2 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B6 )
			( R_HANDEMPTY )
			( ONTABLE_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B6 ))
			(not ( FREE_M2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PUTDOWN_B3_M2_R1
		:parameters ()
		:precondition
		(and
			( FREE_M2 )
			( ROBOT_CAN_PREP_ACTION )
			( R_HOLDING_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B3 )
			( R_HANDEMPTY )
			( ONTABLE_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( R_HOLDING_B3 ))
			(not ( FREE_M2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PICKUP_FAR_B7_R2
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B7_R2 )
			( R_HANDEMPTY )
			( ONTABLE_B7 )
			( CLEAR_B7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B7 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( ONTABLE_B7 ))
			(not ( CLEAR_B7 ))
			(not ( R_HANDEMPTY ))
			(not ( AT_B7_R2 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PICKUP_B6_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B6_R1 )
			( R_HANDEMPTY )
			( ONTABLE_B6 )
			( CLEAR_B6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B6 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( ONTABLE_B6 ))
			(not ( CLEAR_B6 ))
			(not ( R_HANDEMPTY ))
			(not ( AT_B6_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)
	(:action ROBOT_PICKUP_B3_R1
		:parameters ()
		:precondition
		(and
			( ROBOT_CAN_PREP_ACTION )
			( AT_B3_R1 )
			( R_HANDEMPTY )
			( ONTABLE_B3 )
			( CLEAR_B3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( R_HOLDING_B3 )
			( HUMAN_CAN_PREP_ACTION )
			(not ( ONTABLE_B3 ))
			(not ( CLEAR_B3 ))
			(not ( R_HANDEMPTY ))
			(not ( AT_B3_R1 ))
			(not ( ROBOT_CAN_PREP_ACTION ))
		)
	)

)
