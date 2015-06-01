# -*- coding: utf-8 -*-
"""
Created on Mon Jul 28 15:23:43 2014

@author: jasbir-i5
"""
from math import factorial
fac = [factorial(i) for i in range(10)]

def is_fac_sum(n):
    m = 0 
    for i in str(n):  # I cut down 40 s, using this instead of m = sum([fac[int(i)] for i in str(n)])
        m += fac[int(i)] 
    if m == n :
        return True
    else:
        return False

def problem_34():
    ans =[]
    upperBound = fac[9] * 7 # This upperbound can be improved. http://en.wikipedia.org/wiki/Factorion
    for i in xrange (11,upperBound + 1): 
        if is_fac_sum(i):
            ans.append(i)
    return ans
    
if __name__  == "__main__":
    from time import time
    start = time()
    t = problem_34()
    answer = sum(t)
    print ('Time Taken : ', time() - start)
    print t
    print ('Answer is : ', answer)