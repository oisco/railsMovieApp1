a=['| |','| |','| |','| |','| |','| |']
b=['| |','| |','| |','| |','| |','| |']
c=['| |','| |','| |','| |','| |','| |']
d=['| |','| |','| |','| |','| |','| |']
e=['| |','| |','| |','| |','| |','| |']
f=['| |','| |','| |','| |','| |','| |']

thegrid=[a,b,c,d,e,f]

def checkInput():
    """method to check if user entered a valid position"""

def checkIfTaken(x,position):
    """a method to check if the position entered by the user is already taken by another value"""
    return False

def addValue(x,position):
    """method to add a value to a particular position"""
    column=position[0]
    index=position[1]
    print(column,index)
    thegrid[column][index].append('|x|')

def displayGrid(x):
    """method to display the current grid"""
    for p in 5:
        print(p)

def checkIfWon(x,position):
    """method to check if the user has won"""
    return True
    

Won=False
while Won!=True:
    
    position=str(input('Player1: Enter the position you would like enter your value'))
    print(position)
    if checkIfTaken(thegrid,position)!=True:
        addValue(thegrid,position)
        displayGrid(thegrid)
        if checkIfWon(thegrid,position)==True:
            print('congratulations you have won the game!')
            Won=True
    else:
        print('please enter another postition , the postion you selected is currently taken')
