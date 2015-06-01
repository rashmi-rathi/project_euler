# -*- coding: utf-8 -*-
"""
Created on Mon Jun 09 08:37:44 2014

@author: Jasbir


Why does (1/2)*i(i+1) gives zero for i = 1


"""

def NumDivisors(n):
    x = 1
    for i in range(2, int(n**0.5)):
        if n % i == 0:        
            x += 2
    if n % int(n**0.5) == 0:
        x += 1
    return(x)
    
def NumDivisorsA(n): # Counts number of the divisors
    x = 1 
    for i in range(2,n+1):
        if n%i == 0:      
            x = x + 1
    return(x)


def Problem12():
    TriangleNumber = lambda x : x*(x+1)*(0.5)
    i=0
    while True:
        i = i+1
        if i%2 == 0:
            #n = NumDivisors(i/2)*NumDivisors(i+1)        
            if NumDivisors(i/2)*NumDivisors(i+1) > 500:
                break
        if i%2 == 1:       
            if NumDivisors(i)*NumDivisors((i+1)/2) > 500:
                break        
    return int(TriangleNumber(i))