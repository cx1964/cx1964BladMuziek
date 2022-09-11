# file: application.py
# functie: python flask app tbv 
#          oefen van random benoemen solmisatie syllables en Cruwens handsigns
#          door deze te tonen. 
# doc: zie http://python-pillow.github.io/
#      zie https://stackoverflow.com/questions/46785507/python-flask-display-image-on-a-html-page

from flask import Flask, render_template
import os
import random

PEOPLE_FOLDER = os.path.join('static', 'people_photo')

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = PEOPLE_FOLDER

@app.route('/')
@app.route('/index')
def show_index():
    randomInt = round(random.uniform(1, 7))
    #print ("Random:", randomInt) 
    # lees een plaatje in en toon het plaatje
    # er zijn plaatjes van 1 t/m 7 met de solmisatie syllable
    # dus een plaatje van do, re, mi, enze op de notenbalk met filenamen 1ss.png t/m 7ss.png
    # er zijn ook plaatjes van de handsigns van 1chs.png t/m 7chs.png

    # toon solmisatie syllable
    fSS = './'+ str(randomInt) + 'ss.png'
    fCHS = './'+ str(randomInt) +'chs.png'
    full_filename = os.path.join(app.config['UPLOAD_FOLDER'], fSS)
    return render_template("index.html", user_image = full_filename)

