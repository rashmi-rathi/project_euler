# -*- coding: utf-8 -*-
"""
Created on Wed Jun 11 20:08:03 2014

@author: Jasbir
"""

import math
number = math.factorial(100)
number = str(number)
length = len(number)
Sum = 0

for i in range(0,length):
    Sum = Sum + int(number[i])

print Sum