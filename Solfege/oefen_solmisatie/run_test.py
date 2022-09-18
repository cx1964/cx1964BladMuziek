# file: run_test.py
# functie: script die een aantal random nummers genereerd en deze bewaard in een List
# doc: 

import random

maxNumber = 10
numberList = []
ssList = [] # list met solmisatie syllable pictures (inclusief pad)
chsList = [] # list met Cruwens' handsigns pictures (inclusief pad)

for i in range(maxNumber):
  randomInt = round(random.uniform(1, 7))
  numberList.append(randomInt)
  # maak een random filenaam met pad tbv de Solmisatie syllable pictures
  fSS = './'+ str(randomInt) + 'ss.png' 
  ssList.append(fSS)

  # maak een random filenaam met pad tbv de Cruwens' handsigns pictures
  fCHS = './'+ str(randomInt) +'chs.png'
  chsList.append(fCHS)


# loop over de array
count=0
print("OutPut")
for n in numberList:
  print("n"   , count, " ", numberList[count])
  print("fSS" , count, " ", ssList[count])
  print("fCHS", count, " ", chsList[count])
  count=count+1  