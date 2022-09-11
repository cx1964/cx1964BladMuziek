# file: oefen_solmisatie.py
# functie: script die random een solmisatie syllable toont om te oefen met benoemen
# doc: zie http://python-pillow.github.io/

import random
from PIL import Image
import time

maxNumber = 10

for i in range(maxNumber):
  randomInt = round(random.uniform(1, 7))
  print ("Random:", randomInt) 
  # lees een plaatje in en toon het plaatje
  # er zijn plaatjes van 1 t/m 7 met de solmisatie syllable
  # dus een plaatje van do, re, mi, enze op de notenbalk met filenamen 1ss.png t/m 7ss.png
  # er zijn ook plaatjes van de handsigns van 1chs.png t/m 7chs.png

  # toon solmisatie syllable
  fSS = './'+ str(randomInt) + 'ss.png'
  img = Image.open(fSS)
  img.show()
  
  # slaap 15 seconden
  t=15
  time.sleep(t) 

  # Toon een Cruwen handsign plaatje
  fCHS = './'+ str(randomInt) +'chs.png'
  img = Image.open(fCHS)
  img.show()
 
  # slaap 15 seconden
  t=15
  time.sleep(t) 
