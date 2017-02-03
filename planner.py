import os

class Planner():
    PATH_TO_FAST_DOWNWARD = './planner/FAST-DOWNWARD/'
    PATH_TO_PR2 = './planner/'

    def __init__(self, domain='./planner/domain.pddl', problem='./planner/problem.pddl', obs='./planner/obs.dat'):
        self.domain = domain
        self.problem = problem
        self.obs = obs

    def plan(self):
        try:
            cmd = self.PATH_TO_FAST_DOWNWARD + 'fast-downward.py ' + self.domain + ' ' + self.problem + ' --search "astar(lmcut())"';
            os.system(cmd)
            print 'FAST-DOWNWARD called...'
        except:
            raise Exception('Error running FAST-DOWNWARD!')

    def getActionNames(self):
        try:
            cmd = self.PATH_TO_PR2 + 'pr2plan -d ' + self.domain + ' -i ' + self.problem +' -o ' + self.obs
            os.system(cmd)
        except:
            raise Exception('Call to PR2 failed -- probably did not produce output.sas')
        
        actionNames = []
        f = open('./planner/output.sas')
        read_action_name = False
        for l in f:
            if read_action_name:
                actionNames.append(l.strip())
                read_action_name = False
            elif 'begin_operator' in l:
                read_action_name = True
            else:
                read_action_name=False

        return actionNames
    
    def getOrderedObservations(self):
        observations = {}
        f = open(self.obs)
        count = 1
        for l in f:
            observations[ count ] = l.strip()
            count += 1
        return observations
