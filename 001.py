
def Problem1():
    Sum = 0
    for i in range(1000):
        if i%3 == 0 or i%5 == 0 :
        	Sum = Sum + i
    return(Sum)

print ("The answer is : " , Problem1())