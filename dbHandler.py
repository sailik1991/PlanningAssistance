import MySQLdb
import os
from flask import jsonify

class dbHandler:

    def __init__(self):
        self.db = MySQLdb.connect( 'localhost','root','root','radar' )
        self.db.autocommit(True)
        self.cursor = self.db.cursor()
        self.tableKeys = {'fire_stations_actual': 'fire_station', 'hospitals': 'hospital', 'police_stations': 'police_station'}
    
    def initializeDatabase(self):
        try:
            cmd = 'mysql -u root -p radar < radar.sql'
            os.system(cmd)
        except:
            print "[ERROR] Initializing RADAR Database"
 
    def getObjects(self):
        self.cursor.execute( 'select * from object_type' )
        return self.cursor.fetchall()
        
    def getTasks(self):
        self.cursor.execute( 'select * from tasks' )
        return self.cursor.fetchall()
        
    def getFireStationsData(self):
        self.cursor.execute( 'select * from fire_stations_actual' )
        s = self.cursor.fetchall()
        return s
        
    def getFireStationPredicates(self):
        self.cursor.execute( 'select * from predicates_for_fireStation' )
        s = self.cursor.fetchall()
        return s
        
    def getHospitalData(self):
        self.cursor.execute( 'select * from hospitals' )
        return self.cursor.fetchall()
        
    def getHospitalPredicates(self):
        self.cursor.execute( 'select * from predicates_for_hospital' )
        return self.cursor.fetchall()
        
    def getPoliceStationData(self):
        self.cursor.execute( 'select * from police_stations' )
        return self.cursor.fetchall()
        
    def getPoliceStationPredicates(self):
        self.cursor.execute( 'select * from predicates_for_policeStation' )
        return self.cursor.fetchall()
        
    def getActionDurations(self):
        self.cursor.execute( 'select * from durations' )
        return self.cursor.fetchall()
        
    def getSubGoalPredicates(self):
        self.cursor.execute( 'select * from subgoals' )
        return self.cursor.fetchall()
    
    def getCustomCursor(self, rowsToGet, tableName, conditions='1=1' ):
        self.cursor.execute( 'select {0} from {1} where {2}'.format(rowsToGet, tableName, conditions) )
        return self.cursor.fetchall()
      
    def getUIReadyData(self, data, tableName):
        self.cursor.execute( 'describe {0}'.format(tableName) )
        tableDesc = self.cursor.fetchall()
        mutable_data = [ [] for i in range( len(data) ) ]
        for i in range(len(data)):
            mutable_data[i].append( data[i][0] )
            for j in range(1, len(data[i] )):
                s = '<div class="glyphicon glyphicon-{0}" style="color:{1};cursor:pointer" onclick="updateResource(\'{2}\', \'{3}\', \'{4}\', {5})"></div>'
                if data[i][j] == 1:
                    mutable_data[i].append( s.format(
                        'ok', '#00C851', tableName, data[i][0], tableDesc[j][0], 1) )
                else:
                    mutable_data[i].append( s.format(
                        'remove', '#ff4444', tableName, data[i][0], tableDesc[j][0], 0) )
        return mutable_data

    def updateResourcesInTable(self, resourceName, tableName, rowId, presentState):
        updatedState = 1
        if presentState == '1':
            updatedState = 0
        sql_cmd = 'update {0} set {1} = {2} where {3} like "{4}"'.format(tableName, resourceName, updatedState, self.tableKeys[ tableName ], rowId)
        print(sql_cmd)
        self.cursor.execute(sql_cmd)
