from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def main():
    return render_template('responsive.html')
    
@app.route("/maps")
def maps_page():
    return render_template('maps.html')
    
if __name__ == '__main__':
    app.run(use_reloader=True)
