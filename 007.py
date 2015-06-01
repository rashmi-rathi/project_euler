# -*- coding: utf-8 -*-
"""
Created on Sun Jun 08 23:40:24 2014

@author: Jasbir
"""

def IsPrime(n):
    import math
    m=int(math.sqrt(n))
    for i in range(3,m+1,2):
        if n%i==0:
            return False
    return True

import time
start = time.time()        
j = 1
i = 1


while True:
    j=j+2
    if IsPrime(j)==True:
        i=i+1
        if i == 10001:
            break 
    else:
        continue
print "time taken : " , time.time() - start
print(j)