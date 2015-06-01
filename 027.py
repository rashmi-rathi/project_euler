# -*- coding: utf-8 -*-
"""
Created on Thu Jul  3 17:55:12 2014

@author: jasbir
"""
def is_prime(n):
    import math
    k=int(math.sqrt(n))
    for i in range(2,k+1):
        if n%i == 0:
            return False
    return True


def Problem27():
    data = []
    primes = set()
    for a in range(-1000,1000+1):    
        for b in range(1000+1):
            f = lambda n : n**2  + a*n +b
            i=0
            while f(i)>0:
                if f(i) in primes:
                    pass
                elif not is_prime(f(i)):
                    break                    
                primes.add(f(i))                
                i += 1            
            data.append((a,b,i))
    
    for i, elems in enumerate(data):
        if i == 0 :
            initial = elems
        else:
            if elems[2] > initial[2]:
                initial = elems            
    return initial

import time
t = time.time()
x = Problem27()
print 'time taken : ',time.time() - t
print x