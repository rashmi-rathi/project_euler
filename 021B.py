# -*- coding: utf-8 -*-
"""
Created on Fri Jun 27 04:08:52 2014

@author: Jasbir


Is there a better way to do this?

"""

def proper_factors(n):
    import math
    number = int(math.sqrt(n))
    factors = set([1])
    for i in xrange(2,number+1):
        if (i not in factors) and n%i == 0 :
            factors.add(i)
            factors.add(n/i)
    return sorted(list(factors))
    
#print proper_factors(1000)

def d(n):
   return sum(proper_factors(n))

def amicable_numbers():
    amicables = []
    for a in range(2,10000):
        if  a not in amicables:      
            b = d(a)         
            if d(b) == a and a != b:
                amicables.append(a)
                amicables.append(b)
    amicables.sort()
    return amicables
def problem21():
    print 'sum of all the amicable numbers under 10000 is ',sum(amicable_numbers())
