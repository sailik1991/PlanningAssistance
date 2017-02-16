from flask import Flask, render_template, request, jsonify
from planner import Planner
import json
from dbHandler import dbHandler

app = Flask(__name__)

dbCaller = dbHandler()
planner = Planner()

# Should comment out this call to prevent initialization of radar db at ever
# server restart.
dbCaller.initializeDatabase()

@app.route("/")
def index():
    planner.definePlanningProblem()
    a = planner.getActionNames()
    g = ['Extinguish Fire At Byeng']
    if a == []:
        o = {'1': 'INVALID INITIAL STATE ;Initial State is Invalid'}
    else:
        o = planner.getOrderedObservations()
    return render_template('index.html', plan = o, actions = a, goals=g)

def getPresentPlan(request):
    """
    Example 'plan' : [
    {"name":"address_media firechief","x":0,"y":0,"width":12,"height":1},
    {"name":"address_media firechief","x":0,"y":3,"width":12,"height":1}
    ]
    """
    seq = {}
    plan = json.loads(dict(request.form)['plan'][0])
    for act in plan:
        # We assume that only one action occurs at a time
        # TODO: Update code if we want to allow options for
        # two simultaneous actions (choices)
        seq[ act["y"] ] = act["name"]
    return seq

@app.route("/updateGoals", methods=['GET','POST'])
def updateGoals():
    return index() 

@app.route("/validate", methods=['GET', 'POST'])
def validate():
    planner.getValidatedPlan(getPresentPlan(request))
    return index()

@app.route("/updateResources", methods=['GET','POST'])
def updateResources():
    d = dict(request.form)
    dbCaller.updateResourcesInTable( d['resourceName'][0], d['tableName'][0], d['rowId'][0], d['presentState'][0] )
    return index()

@app.route("/suggest", methods=['GET', 'POST'])
def suggest():
    planner.getSuggestedPlan(getPresentPlan(request))
    return index() 

@app.route("/readFireStationResources", methods=['GET', 'POST'])
def readFireStationResource():
    data = dbCaller.getFireStationsData()
    data = dbCaller.getUIReadyData( data, 'fire_stations_actual' )
    return jsonify( {"data" : data} )

@app.route("/readHospitalResources", methods=['GET', 'POST'])
def readHospitalResource():
    data = dbCaller.getHospitalData()
    data = dbCaller.getUIReadyData( data, 'hospitals' )
    return jsonify( {"data" : data} )

@app.route("/readPoliceStationResources", methods=['GET', 'POST'])
def readPoliceStationResource():
    data = dbCaller.getPoliceStationData()
    data = dbCaller.getUIReadyData( data, 'police_stations' )
    return jsonify( {"data" : data} )

if __name__ == '__main__':
    app.run(use_reloader=True)
