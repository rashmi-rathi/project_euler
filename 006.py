# -*- coding: utf-8 -*-
"""
Created on Sun Jun 08 23:31:28 2014

@author: Jasbir
"""

def SumNatural(n):
    x = n*(n+1)/2
    return x

def SumSquare(n):
    Sum=0
    for i in range(1,n+1):
        Sum = Sum + i**2
    return Sum

print  SumNatural(100)**2 - SumSquare(100)