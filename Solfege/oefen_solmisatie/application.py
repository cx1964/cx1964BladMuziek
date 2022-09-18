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

#PICTURE_FOLDER = os.path.join('static', '.')

app = Flask(__name__)
#app.config['UPLOAD_FOLDER'] = PICTURE_FOLDER

path="/home/claude/Desktop/Downloads/cx1964BladMuziek/Solfege/oefen_solmisatie/"
maxNumber = 10
ssList = [] # list met solmisatie syllable pictures (inclusief pad)
chsList = [] # list met Cruwens' handsigns pictures (inclusief pad)


@app.route('/')
@app.route('/index')
def show_index():
    randomInt = round(random.uniform(1, 7))
    #print ("Random:", randomInt) 
    # lees een plaatje in en toon het plaatje
    # er zijn plaatjes van 1 t/m 7 met de solmisatie syllable
    # dus een plaatje van do, re, mi, enze op de notenbalk met filenamen 1ss.png t/m 7ss.png
    # er zijn ook plaatjes van de handsigns van 1chs.png t/m 7chs.png

    # Bouw 2 lists op met filenamen van pictures
    for i in range(maxNumber):
      # maak een random filenaam met pad tbv de Solmisatie syllable pictures
      fSS = path + str(randomInt) + 'ss.png' 
      ssList.append(fSS)

      # maak een random filenaam met pad tbv de Cruwens' handsigns pictures
      fCHS = path + str(randomInt) +'chs.png'
      chsList.append(fCHS)



    """"
    ToDo:
    Onderstaande regels werken nog niet 
    Iets met dirctory of file
    nog uitzoeken. 
    Doel is hoe kan je plaatjes laten zin in Flask?

    full_filename = os.path.join(app.config['UPLOAD_FOLDER'], fSS)
    return render_template("index.html", user_image = full_filename)
    """

    # return "Ik ben application.py @ localhost:5000/index"

    # geef beide list met files mee om mbv template generator een stactic HTML file te maken
    # zie ook https://flask.palletsprojects.com/en/2.2.x/tutorial/templates/?highlight=template
    # zie ook https://www.digitalocean.com/community/tutorials/how-to-use-templates-in-a-flask-application
    # zie ook jinja https://jinja.palletsprojects.com/en/3.1.x/
    return render_template("index.html", ssList=ssList ) #: probeer eerst met 1 list later met fCHS=chsList)
    #return render_template("index.html") # zonder parameters

if __name__=='__main__':
    app.run()