# -*- coding: utf-8 -*-
"""
Created on Tue Jun 10 11:06:44 2014

@author: Jasbir
"""
import time
start = time.time()
def CollatzSteps(n):
    number_of_steps = 1
    while n != 1:  
        if n%2 == 0 :
            n = n/2
            number_of_steps = number_of_steps + 1            
        else:
            n = 3*n +1
            number_of_steps = number_of_steps + 1
    return number_of_steps

def Problem14():
    NumberOfSteps=[]
    for i in range(2,10**6+1):
        NumberOfSteps.append(CollatzSteps(i))   
    return NumberOfSteps.index(max(NumberOfSteps))+2
    
if __name__ == "__main__":
    import time
    start = time.time()
    print "Answer is : ", Problem14()
    print "Time taken : ", time.time() - start