from dbHandler import dbHandler

class problemFileMaker:

    def __init__(self):
        self.dbCaller = dbHandler()

    def addObjects(self):
        '''
        Function returns objects that need to be added to the problem file
        @Returns - pddl format strings of objects 
        '''
        s = ""
        object_type = self.dbCaller.getObjects()
        for i in object_type:
            objects = self.dbCaller.getCustomCursor('object_name', 'objects', 'type ='+ str(i[0]))
            for o in objects:
                s += ' ' + o[0]
            s += ' - ' + i[1]	+ '\n'
        
        return s

    def addNotNeeded(self):
        pois = self.dbCaller.getCustomCursor('object_name', 'objects', 'type = 8')
        actors = self.dbCaller.getCustomCursor('object_name', 'objects', 'type in (1,2,3,4)')
        s = ""
        for i in pois:
            s += '(not_needed_search_casualties ' + i[0] + ' )\n'
            s += '(not_needed_attend_casualties ' + i[0] + ' )\n'
            for j in pois:
                    s += '(not_needed_diverted_traffic ' + i[0] + ' '+ j[0] +')\n'
        for i in actors:
            s += '(not_needed_active_local_alert ' + i[0] + ' )\n'
        s += '(not_needed_address_media )\n'
        return s

    def addInitialState(self, gs):
        s = ""
        initStateList = self.dbCaller.getTasks()
        self.notSmallFire = True
        for predicate in initStateList:
            if (predicate[0] == "small_fire_at byeng"):
                if 'Small' in gs:
                    s += '(' + predicate[0] + ')\n'
                    self.notSmallFire = False
            else:
                s += '(' + predicate[0] + ')\n'

        s += '\n(=(total-cost) 0.0)\n\n'

        s += self.addNotNeeded()
        return s

    def addResourcesIfAvailable(self, data, pred):
        s = ""
        for i in data:
            length = len(i)
            for j in range(1, length):
                pre = [p[1] for p in pred if p[0] == j]
                if(i[j] > 0):
                    s += '('+ pre[0] +' '+ i[0] +')\n'
        return s

    def addFireStationResources(self):
        return self.addResourcesIfAvailable(self.dbCaller.getFireStationsData(), self.dbCaller.getFireStationPredicates())

    def addHospitalResources(self):
        return self.addResourcesIfAvailable(self.dbCaller.getHospitalData(), self.dbCaller.getHospitalPredicates())

    def addPoliceStationResources(self):
        return self.addResourcesIfAvailable(self.dbCaller.getPoliceStationData(), self.dbCaller.getPoliceStationPredicates())

    def addDurationsOfActions(self):
        durationList = self.dbCaller.getActionDurations()
        s = ""
        for duration in durationList:
            s += '(=(' + duration[0] + ') ' + str(duration[1]) + ')\n'
        return s
    
    def addGoal(self):
        goalList = self.dbCaller.getSubGoalPredicates()
        s = ""
        for goal in goalList:
            s += '(' + goal[0] + ')\n'

        return s
