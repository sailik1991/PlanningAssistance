#!/usr/bin/env python

'''
Topic   :: Help with PDDL stuff
Project :: Explanations for Multi-Model Planning
Author  :: Tathagata Chakraborti
Date    :: 09/29/2016
'''

import re, os


'''
Global :: global variables
'''

__GROUND_CMD__    = "/var/www/radar/planner/mmp/src/ground.sh {} {} > stdout.txt"
__FD_PLAN_CMD__   = "/var/www/radar/planner/mmp/src/fdplan.sh {} {}"
__VAL_PLAN_CMD__  = "/var/www/radar/planner/mmp/src/valplan.sh {} {} {}"

def get_problem_state_preds(problem_lines, section_prefix):
    start_line = False
    init_state = []
    for line in problem_lines:
        if section_prefix in line:
            start_line = True
        elif start_line:
            if line.strip() == ')':
                start_line = False
            elif "(and" not in line:
                init_state.append('@'.join(line.split(' ')))
    return init_state


'''
Method :: write domain file from given state
'''

def write_domain_file_from_state(state, domain_source, problem_source):

    predicateList = set()
    actionList    = {}
    init_state_list = []
    goal_state_list =[]

    for item in state:
        if "state" not in item:
            regex_probe   = re.compile("(.*)-has-(parameters|precondition|add-effect|delete-effect)-(.*)$").search(item)
            actionName    = regex_probe.group(1)
            _condition    = regex_probe.group(2)
            predicateName = regex_probe.group(3)

            predicateList.add(predicateName)

            if actionName not in actionList: actionList[actionName] = {'parameters':"", 'precondition' : [], 'add-effect' : [], 'delete-effect' : []}
            if _condition == 'parameters':
                actionList[actionName][_condition] = predicateName
            else:
                actionList[actionName][_condition].append(predicateName) 
        else:
            regex_probe   = re.compile("has-(initial|goal)-state-(.*)$").search(item)
            state_type = regex_probe.group(1)
            pred = regex_probe.group(2)
            if state_type == 'initial':
                init_state_list.append(' '.join(pred.split('@')))
            else:
                goal_state_list.append(' '.join(pred.split('@')))

    temp_domainFileName = '/tmp/temp.pddl'
    temp_problemFileName = '/tmp/temp_prob.pddl'

    with open(domain_source, 'r') as template_domain_file:
        template_domain = template_domain_file.read()

    with open(problem_source, 'r') as template_prob_file:
        template_problem = template_prob_file.read()



    with open(temp_domainFileName, 'w') as temp_domain_file:

        predicateString = '\n'.join(['( {} )'.format(item) for item in predicateList])
        actionString    = '\n'.join(['(:action {}\n:parameters ({})\n:precondition\n(and\n{}\n)\n:effect\n(and\n{}\n)\n)\n'\
                                     .format(key, actionList[key]['parameters'],'\n'.join(['( {} )'.format(p) for p in actionList[key]['precondition']]), \
                                             '{}\n{}'.format('\n'.join(['( {} )'.format(p) for p in actionList[key]['add-effect']]), \
                                                             '\n'.join(['(not ( {} ))'.format(p) for p in actionList[key]['delete-effect']]))) for key in actionList.keys()])
        
        temp_domain_file.write(template_domain.format(actionString))

    with open(temp_problemFileName, 'w') as temp_problem_file:
        template_problem = template_problem.replace('%INIT%','\n'.join(init_state_list))
        template_problem = template_problem.replace('%GOAL%','\n'.join(goal_state_list))
        temp_problem_file.write(template_problem) 
    return (temp_domainFileName, temp_problemFileName)
        

'''
Method :: read state from given domain file
'''

def read_state_from_domain_file(domainFileName, problemFileName):

    def PDDLaction(description):
        action_name            = re.search('\(:action(.*?)[\s+]*:', description).group(1).strip()

        try:    parameters     = re.search(':parameters[\s+]*\((.*?)\)[\s+]*:', description).group(1)
        except: parameters     = ""
        try:    preconditions  = {re.search('\(((?!not).*?)\)', item).group(1).strip() : not 'not ' in item \
                                  for item in re.findall('(\(not[\s+]*\(.*?\)[\s+]*\)|\(.*?\))', re.search(':precondition[\s+]*\(and(.*?)\)[\s+]*:', description).group(1))}

        except: preconditions  = {}

        try:
            #all_effects = [item for item in re.findall('(\(not[\s+]*\(.*?\)[\s+]*\)|\(increase[\s+]*\(.*?\)[\s+]*\(.*?\)[\s+]*\)|\(.*?\))', re.search(':effect[\s+]*\(and(.*?)\)[\s+]*(\(:action|\)[\s+]*$)', description).group(1))]
            all_effects = [item for item in re.findall('(\(not[\s+]*\(.*?\)[\s+]*\)|\(increase[\s+]*\(.*?\)[\s+]*\(.*?\)[\s+]*\)|\(.*?\))', re.search(':effect[\s+]*\(and(.*?)\)$', description).group(1))]
            effects = {}
            for eff in all_effects:
                if 'increase' in eff:
                    effects[re.search('\((increase.*)\)',eff).group(1)] = True
                else:
                    effects[re.search('\(((?!not\s).*?)\)', eff).group(1).strip()] = bool(not 'not ' in eff)

        except Exception as exc:
            print "exception",exc
            effects        = {}
            
        return [action_name, parameters, preconditions, effects]

    
    ''''''

    with open(domainFileName, 'r') as domain_file:
        action_dict = {item.split(' ')[1] : PDDLaction(item) for item in re.findall('\(:action.*?\)[\s+]*\)[\s+]*\)', re.sub('[\s+]', ' ', domain_file.read()))}
    with open(problemFileName) as problem_file:
        problem_lines = problem_file.readlines()
        init_state = get_problem_state_preds(problem_lines,'(:init')
        goal_state = get_problem_state_preds(problem_lines,'(:goal')
        #print init_state
        #print goal_state
    ''''''

    state = []
    for key in action_dict.keys():
        actionName        = action_dict[key][0]
        state.append('{}-has-parameters-{}'.format(actionName, action_dict[key][1]))
        for precondition in action_dict[key][2].items():
            state.append('{}-has-precondition-{}'.format(actionName, precondition[0]))
           
        for effect in action_dict[key][3].items():
            if effect[1]: state.append('{}-has-add-effect-{}'.format(actionName, effect[0]))
            else:         state.append('{}-has-delete-effect-{}'.format(actionName, effect[0]))
    for pred in init_state:
        state.append('has-initial-state-{}'.format(pred))
    for pred in goal_state:
        state.append('has-goal-state-{}'.format(pred))
    return state




'''
Method :: compute plan from domain and problem files
'''

def get_plan(domainFileName, problemFileName):
    #print "command",__FD_PLAN_CMD__.format(domainFileName, problemFileName)
    output = os.popen(__FD_PLAN_CMD__.format(domainFileName, problemFileName)).read().strip()
        
    #plan   = [item.strip().replace('_', ' ') for item in output.split('\n')] if output != '' else []
    plan   = [item.strip() for item in output.split('\n')] if output != '' else []
    cost   = len(plan)

    return [plan, cost]


''' 
Method :: ground PDDL domain and problem files
'''

def ground(domainFileName, problemFileName):

    output = os.system('./clean.sh')
    output = os.system(__GROUND_CMD__.format(domainFileName, problemFileName))


''' 
Method :: validate plan given PDDL domain and problem files
'''

#def validate_plan(domainFileName, problemFileName, planFileName):

#    output = os.system(__VAL_PLAN_CMD__.format(domainFileName, problemFileName, planFileName))
#    return eval(output)

def validate_plan(domainFileName, problemFileName, planFileName):
    output = os.popen(__VAL_PLAN_CMD__.format(domainFileName, problemFileName, planFileName)).read().strip()
    return eval(output)



if __name__ == '__main__':
    pass

    ''' debug list '''
    #print validate_plan('../domain/fetchworld-base-m.pddl', '../domain/problem1.pddl', 'sas_plan')
    #state = read_state_from_domain_file('../domain/fetchworld-base-m.pddl')
    #write_domain_file_from_state(state)
