# -*- coding: utf-8 -*-
"""
Created on Fri Jun 27 13:17:14 2014

@author: Jasbir
"""

import math
    
def proper_factors(n):
    number = int(math.sqrt(n))
    factors = set([1])
    for i in xrange(2,number+1):
        if (i not in factors) and n%i == 0 :
            factors.add(i)
            factors.add(n/i)
    return sorted(list(factors))

def is_perfect(n):
    '''
    0 = perfect
    1 = abundant
    2 = deficient

    '''
    temp_sum = sum(proper_factors(n))
    if n == temp_sum:
        return 0
    elif temp_sum > n:
        return 1
    elif temp_sum < n:
        return 2

def problem23():
    clasify_vector = [is_perfect(n) for n in range(0,28123+1)]
    sum_2_abundants = set()
    for i in xrange(1,28123+1):
        k = int(math.ceil(i/2))
        for j in range(2,k+1):
            if (i not in sum_2_abundants) and (clasify_vector[i-j] ==1 and clasify_vector[j]==1):
                sum_2_abundants.add(i)
                
    not_sum_2_abundants = []           
    for i in xrange(28123+1):
        if i not in sum_2_abundants:
            not_sum_2_abundants.append(i)
    return sum(not_sum_2_abundants)            
#print ' the sum of all the positive integers which cannot be written as the sum of two abundant numbers is ', problem23()