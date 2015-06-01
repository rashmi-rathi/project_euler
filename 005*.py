# -*- coding: utf-8 -*-
"""
Created on Sun Jun 08 17:28:28 2014

@author: Jasbir


Only works for numbers upto 18
"""

def lcm(x,y):
    if x > y:
        least = y
        y = x
        x = least
    for i in range(x,x*y+1):
        if i%x==0 and i%y ==0:
            return i

def problem5(n):
    x=2
    for i in range(3,n):        
        x = lcm(x,i)
    return x