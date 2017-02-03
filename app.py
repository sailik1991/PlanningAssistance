from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from planner import Planner

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///mock_resource.sqlite3'

db = SQLAlchemy(app)
class fireStationResources(db.Model):
    id = db.Column('resource_id', db.Integer, primary_key = True)
    fire_station = db.Column( 'fire_station', db.String(100) )
    small_engine = db.Column( 'small_engine', db.Integer )
    big_engine = db.Column( 'big_engine', db.Integer )
    ladders = db.Column( 'ladders', db.Integer )
    bulldozers = db.Column( 'bulldozers', db.Integer )
    helicopters = db.Column( 'helicopters', db.Integer )
    rescuers = db.Column( 'rescuers', db.Integer )

    def __init__(self, fire_station, small_engine, big_engine, ladders, bulldozers, helicopter, rescuers):
        self.fire_station = fire_station
        self.small_engine = small_engine
        self.big_engine = big_engine
        self.ladders = ladders
        self.bulldozers = bulldozers
        self.helicopters = helicopters
        self.rescuers = rescuers

@app.route("/")
def main():
    planner = Planner()
    a = planner.getActionNames()
    o = planner.getOrderedObservations()
    
    return render_template('index.html', plan = o, actions = a)

if __name__ == '__main__':
    db.create_all()
    app.run(use_reloader=True)
