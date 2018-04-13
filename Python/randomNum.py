#Kion Smith
#CS 3377.0W3
#kls160430
import random
#the fucntion to get the random number
def randomNum(min,max):   
    return ( (random.randint(min,max)) )

#computers random number
compNum = randomNum(-100,100)
#The max number of guesses
maxGuess = int(10)

#main loop, that calls itself
def mainLoop(curGuess):
    print ("--------------------------------------------")
    #Check to see if the user can still guess
    if maxGuess > curGuess:
        #get the users input and convert to int
        userInput = input("Enter a number from the range -100 to 100\n")
        userNum = int(userInput)
        #make sure the user input is within rnahe
        if userNum > 100 or userNum < -100:
            print ("Not in range, try again (No points taken off)")
            mainLoop(curGuess)
        #if guessed correctly go to the end game
        elif userNum == compNum: 
            print ("Guessed Correctly")
            endGame(curGuess)
        #if guess to high then iterate and loop again
        elif userNum > compNum:
            print ("High Guess")
            mainLoop(curGuess+1)
        #if guess to low then iterate and loop again
        elif userNum < compNum:
            print ("Low Guess")
            mainLoop(curGuess+1)
    #If out of guess     
    else:
        print("Guessed to many times, the number was",compNum)
#Print the user info to a file        
def endGame(numGuess):
    #get name and append the report file
    user = input("Enter your name\n")
    #open and start writing to file i/o
    f = open("Report.txt","a")
    f.write(user)
    f.write("-")
    f.write(str(numGuess))
    f.write("\n")
    
    #close the file i/o
    f.close()
    
#Start the game   
print ("Guessing game")
mainLoop(1)


