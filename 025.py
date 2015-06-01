# -*- coding: utf-8 -*-
"""
Created on Sun Jun 29 19:25:56 2014

@author: Jasbir
"""

#==============================================================================
#           Solution 1 (Pythonic)
#       Uses Python Generators
#==============================================================================

def fib():
    a,b=0,1
    yield 0
    yield 1
    while True:
        b,a=a+b,b
        yield b

def Problem25_1():
    j=0
    for i in fib():
        if len(str(i)) == 1000:
            #print i
            return j
            break
        j += 1

print Problem25_1(), ' is the first fibonnaci number to contain 1000 digits'

#==============================================================================
#           Solution 2 (Pythonic)
# Pythonic solution, seems to be faster than the first solution
#==============================================================================


def Problem25_2():
    a=0 # 0th fib number
    b=1 # 1st fib number
    i=1 # counter for the fibonnaci sequence
    while True:
        if len(str(b))==1000:
            print i, ' is the first fibonnaci number to contain 1000 digits'
            break
        else:
            a,b = b,a+b
            i += 1


#==============================================================================
#               Solution 3
# For this algorithm I wrote my own function to add two numbers of arbitrary length
# Otherewise it's just a variant of Solution 2
#==============================================================================




def sum_2(x,y):
#   The input must be as string of integers. Then this program adds up the number of
#   arbitrary length
    if len(x) > len(y):
        x,y = y,x
    x = [int(i) for i in x]
    y = [int(j) for j in y]

    del i
    del j

    length = len(y)
    for i in range(length - len(x)):
        x.insert(0,0)
    Sum = [0]*(length + 1)

    for j in range(-1,-length-1,-1): # Should be going from -1 to -length
        t = y[j] + x[j]
        if t < 10:
            Sum[j] = t
        elif t > 9 :
            Sum[j] = ( t )%10
            if j != -length:
                y[j-1] = y[j-1]+1
            else:
                Sum[0] = Sum[0] + 1
    Sum = ('').join([str(k) for k in Sum])
    while Sum[0] == '0':
        Sum = Sum[1:]
    return Sum

def Problem25_3():
    a ='0' # 0th fib number
    b ='1' # 1st fib number
    i = 1 # counter for the fibonnaci sequence
    while True:
        if len(b)==1000:
            print i, ' is the first fibonnaci number to contain 1000 digits'
            break
        else:
            a,b = b,sum_2(a,b)
            i += 1
    return i

#########################################################################################################################

if __name__ == "__main__":
    from time import time
    start = time()
    print "Answer is : ", Problem25_3()
    print "Time Taken : " , time() - start

