# file: application.py
# functie: python flask app tbv 
#          oefen van random benoemen solmisatie syllables en Cruwens handsigns
#          door deze te tonen. 
# doc: zie http://python-pillow.github.io/
#      zie https://stackoverflow.com/questions/46785507/python-flask-display-image-on-a-html-page
#
# Opmerking
#      bug zie https://askubuntu.com/questions/1406952/what-is-the-meaning-of-this-pkgresourcesdeprecationwarning-warning-from-pipenv
#      tbv runtime melding op Ubuntu 22.04 
#      PkgResourcesDeprecationWarning: 1.16.0-unknown is an invalid version and will not be supported in a future release
#      warnings.warn(
#      setuptools aangepast
#      
# ToDo
#      Deze oplossing werkt niet voor mij : 
#      voor installa setuptools  versie 59.6.0 (werkt niet)
#      zie script install_python_project_env.sh voor correctie
#      zie ook https://github.com/pypa/setuptools/issues/3278    
#    

from flask import Flask, render_template
import os
import random

PICTURE_FOLDER = os.path.join('static', '.')

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = PICTURE_FOLDER

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
    fSS = str(randomInt) + 'ss.png'
    fCHS = str(randomInt) +'chs.png'
    full_filename = os.path.join(app.config['UPLOAD_FOLDER'], fSS)
    return render_template("index.html", user_image = full_filename)

