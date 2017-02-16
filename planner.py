import os
import subprocess
from shutil import copy as copyf
from problemFileMaker import problemFileMaker

class Planner():
    CALL_FAST_DOWNWARD = './planner/FAST-DOWNWARD/fast-downward.py '
    CALL_VAL = './planner/VAL/validate -v '
    CALL_PR2 = './planner/PR2/pr2plan '

    def __init__(self, domain='./planner/domain.pddl', problem='./planner/mock_problem.pddl', obs='./planner/obs.dat'):
        self.domain = domain
        self.problem = problem
        self.pr_domain = './pr-domain.pddl'
        self.pr_problem = './pr-problem.pddl'
        self.val_pr_domain = './planner/pr-domain.pddl'
        self.val_pr_problem = './planner/pr-problem.pddl'
        self.sas_plan = './sas_plan'
        self.obs = obs
        self.probMaker = problemFileMaker() 

    def plan(self):
        try:
            cmd = self.CALL_FAST_DOWNWARD + self.pr_domain + ' ' + self.pr_problem + ' --search "astar(lmcut())"';
            os.system(cmd)
            print 'FAST-DOWNWARD called...'
        except:
            raise Exception('[ERROR] Running FAST-DOWNWARD!')
    
    def writeObservations(self, actions):
        # Write plan to file in sas_plan style
        f = file(self.obs, 'w')
        for k in sorted(actions):
            f.write(actions[k].strip() + '\n')
        f.close()
               
    def getSuggestedPlan(self, actions):
        # Create pr2 domain with present plan at hand
        self.writeObservations(actions)
        try:
            cmd = self.CALL_PR2 + ' -d ' + self.val_pr_domain + ' -i ' + self.val_pr_problem +' -o ' + self.obs
            os.system(cmd)
        except:
            raise Exception('[ERROR] In Call to PR2!')

        self.plan()

        # Write plan to observation file
        plan_actions = {}
        f = file(self.sas_plan, 'r')
        i = 0
        acts = [x.strip('() \n') for x in actions.values()]
        print "----"
        print acts
        print "----" 
        for l in f:
            if '(general cost)' not in l:
                if 'EXPLAIN_OBS' in l.upper():
                    for a in acts:
                        if a.upper() in l.upper():
                            plan_actions[i] = '(' + a.upper().strip() + ' )'
                            break
                else:
                    plan_actions[i] = l.upper().strip() + ';--'
                i += 1
            
        self.writeObservations(plan_actions)
 
    def getValidatedPlan(self, actions):      
        self.writeObservations(actions)
        try:
            cmd = self.CALL_VAL + self.val_pr_domain + ' ' + self.val_pr_problem + ' ' + self.obs
            proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True)
            (out, err) = proc.communicate()
        except:
            print('[ERROR] Failed to execute VAL on given plan')
        if out:
            if 'Plan failed to execute' in out:
                faults = out.split("Plan Repair Advice:\n")[1].strip()
                if ')' in faults:
                    action_name = faults.split(') ')[0].strip().upper() +")"
                    reason = faults.split('\n\n')[0].strip().replace('\n', " : ")
                f = file(self.obs, 'w')
                for k in sorted(actions):
                    print (actions[k].strip('\n( )').lower(), action_name.strip('\n( )').lower())
                    if actions[k].strip('\n( )').lower() in action_name.strip('\n( )').lower():
                        f.write(actions[k].strip() + ';' + reason + '\n')
                    else:
                        f.write(actions[k].strip() + '\n')
                f.close()

    def deletePrFiles(self):
        try:
            os.remove(self.pr_domain)
            os.remove(self.pr_problem)
        except:
            print "[WARNING] Problem deleting pr-domain and pr-problem files.  Probably they already don't exist!"

    def getActionNames(self):
        self.deletePrFiles()
        try:
            cmd = self.CALL_PR2 + ' -d ' + self.domain + ' -i ' + self.problem +' -o ' + './planner/blank_obs.dat'
            os.system(cmd)
        except:
            raise Exception('[ERROR] Call to PR2 failed!')
      
        if not os.path.isfile( self.pr_domain ) or not os.path.isfile( self.pr_problem ):
            print "[ERROR] Goal cannot be reached from initial state"
            return []
            
         
        try:
            cmd = 'cat pr-problem.pddl | grep -v "EXPLAIN" > pr-problem.pddl.tmp && mv pr-problem.pddl.tmp pr-problem.pddl'
            os.system(cmd)
            cmd = 'cat pr-domain.pddl | grep -v "EXPLAIN" > pr-domain.pddl.tmp && mv pr-domain.pddl.tmp pr-domain.pddl'
            os.system(cmd)
        except:
            raise Exception('[ERROR] Removing "EXPLAIN" from pr-domain and pr-problem files.')
 
        copyf(self.pr_domain, self.val_pr_domain)
        copyf(self.pr_problem, self.val_pr_problem)
        actionNames = []
        f = open('./pr-domain.pddl')
        for l in f:
            if '(:action ' in l:
                actionNames.append('(' + l.split('(:action ')[1] +')')
        return actionNames
    
    def getOrderedObservations(self):
        observations = {}
        f = open(self.obs)
        count = 1
        for l in f:
            observations[ count ] = l.strip()
            count += 1
        return observations
        
    def definePlanningProblem(self):
        '''
        Creates the problem.pddl file
        @Input - Goal for which planning problem is to be made
        @Output - Creates problem.pddl
        '''

        tempProblem = "(define (problem BYENG) (:domain RADAR)\n\n(:objects \n"
        tempProblem += self.probMaker.addObjects()
        
        tempProblem += "\n)\n\n(:init\n"
        tempProblem += self.probMaker.addInitialState()
        
        tempProblem += self.probMaker.addFireStationResources()
        tempProblem += self.probMaker.addHospitalResources()
        tempProblem += self.probMaker.addPoliceStationResources()
        
        tempProblem += self.probMaker.addDurationsOfActions()
        
        tempProblem += '\n)\n\n(:goal\n(and\n'
        tempProblem += self.probMaker.addGoal()
        
        tempProblem += '))\n'
        tempProblem += '\n(:metric minimize (total-cost))\n\n)\n'

        f = file('./planner/mock_problem.pddl','w')
        f.write(tempProblem)
