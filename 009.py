#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Jasbir
#
# Created:     09/06/2014
# Copyright:   (c) Jasbir 2014
# Licence:     <your licence>
#-------------------------------------------------------------------------------

def factor(n,c):
    import math
    m = math.sqrt(n)
    m = int(m)
    for b in range(1,m+1):
        if n%b == 0:
            a = int(n/b)
            if a**2 + b**2 == c**2:
                print('This is it',a,b,c)
                return a,b,c

def Problem9():
    for c in range(0,1000):
        ab = 500000 - 1000*c
        if ab > 0:
            factor(ab,c)
