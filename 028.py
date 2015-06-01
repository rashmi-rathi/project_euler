# -*- coding: utf-8 -*-
"""
Created on Thu Jul 24 19:05:22 2014

@author: Jasbir
"""

def Problem28():
    initial_sum = 0 
    numbers = [[1]]
    for i in range(1,int(1001/2) +1): #this generates the diagonal elements from each line     
        t = numbers[-1][-1]
        temp = [ t + 2*i*j for j in range(1,4+1)]
        numbers.append(temp)    
    for elems in numbers:
        initial_sum += sum(elems)
    return initial_sum