# -*- coding: utf-8 -*-
"""
Created on Sun Sep  7 04:27:41 2014

@author: jasbir-i5
"""
import math

def problem100():
    for i in range(10**12,2*10**12):
        if i%4 == 2 : 
            pass
        else:
            c = i*(i-1)
            b = (0.5 + math.sqrt(c/.2 + 0.25))
            if b is int:
                return b
    
if __name__ == "__main__":
    print problem100()