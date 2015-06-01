# -*- coding: utf-8 -*-
"""
Created on Thu Jun 12 03:40:39 2014

@author: Jasbir
"""


def Routes():
    T = [2]
    for i in range(2,20):
        x = 0
        print('')
        for j in range(i-1):
            x = x + T[j]
            print x
        T.append(2*x + 2)
    return T
        
print Routes()
