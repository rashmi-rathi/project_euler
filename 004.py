#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Jasbir
#
# Created:     07/06/2014
# Copyright:   (c) Jasbir 2014
# Licence:     <your licence>
#-------------------------------------------------------------------------------

#Key palindrome has 11 as a factor.

def dil(n):
    for i in range(10,91):
        if n%i==0 and len(str(n/i))==3:
            print(i,n/i)
            return True
def palindrome():
    for a in range(9,0,-1):
       for b in range(9,-1,-1):
           for c in range(9,-1,-1):
             palindrome = 100001*a + 10010*b + 1100*c
             if dil(palindrome/11)==True:
                return palindrome

x=palindrome()
print x