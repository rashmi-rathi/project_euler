# -*- coding: utf-8 -*-
"""
Created on Fri Jul 25 17:39:26 2014

@author: Jasbir
"""
# Lower bound is 5*(1**5) and upper bound is 5*(9**5)


def problem_30(n):
# This program generates numbers that can be written as the sum of nth powers of their digits
    numbers = []
    temp = lambda x : sum([int(j)**n for j in str(x)])
    for i in range(n*(1**n),n*(9**n)+1):
        if i == temp(i) :
            numbers.append(i)
    return numbers

import time
start = time.time()    
answer = problem_30(7)
print answer, "Time taken : " ,time.time() - start