#Kion Smith
#REVIEW FOR FINAL
import random

randArray = []
posNum = int(0)
negNum = int(0)

minNum = int()
maxNum = int()

sumOfNums = int()

def createNumber(min,max):
    return( (random.randint(min,max)) )

def countSigns(num):
    if num>-1:
        global posNum
        posNum += 1
    else:
        global negNum
        negNum += 1
        
#could also just search array for min and max
def getMin(cur):
    global minNum
    if cur<minNum:
        minNum = cur
def getMax(cur):
    global maxNum
    if cur>maxNum:
        maxNum = cur
        
    
count = 1;
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
