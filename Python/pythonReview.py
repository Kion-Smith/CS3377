#Kion Smith
#REVIEW FOR FINAL
import random
#Global Variables
randArray = []
posNum = int(0)
negNum = int(0)
minNum = int()
maxNum = int()
sumOfNums = int()

#function to create random num
def createNumber(min,max):
    return( (random.randint(min,max)) )

#get the sign of a number
def countSigns(num):
    if num>-1:
        global posNum
        posNum += 1
    else:
        global negNum
        negNum += 1
#looking for min an max        
#could also just search array for min and max, would be better to just check during running
def getMin(cur):
    global minNum
    if cur<minNum:
        minNum = cur
def getMax(cur):
    global maxNum
    if cur>maxNum:
        maxNum = cur
        
#opening reports and writing everything to a file       
def fileWrite(aoo):
    f = open("Reports.txt","a")
    f.write("Postives = ")
    f.write(str(posNum)) #converts to a string (need to do this)
    f.write("\n")
    f.write("Negatives = ")
    f.write(str(negNum))
    f.write("\n")
    f.write("Min = ")
    f.write(str(minNum))
    f.write("\n")
    f.write("Max = ")
    f.write(str(maxNum))
    f.write("\n")
    f.write("Avg = ")
    f.write(str(avg))
    f.write("\n")
    f.write("------------------------ \n")
    f.close()
    
#main loop   
count = 1;
#loop for 1-100
while count<=100:
    curNum = createNumber(-25,25)
    countSigns(curNum)
    randArray.append(curNum)
    getMin(curNum)
    getMax(curNum)
    sumOfNums += curNum
    print ("out prints::",curNum)
    count +=1;

avg = int(sumOfNums/100)

print("Postive",posNum,"Negatives",negNum)
print("Min",minNum,"Max",maxNum)
print("Sum",sumOfNums)
print("Avg",avg)
fileWrite(avg)
