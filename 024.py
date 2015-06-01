# -*- coding: utf-8 -*-
"""
Created on Sat Jun 28 17:22:31 2014

@author: Jasbir
"""
#########################################################################################################
				# Solution 1

def permutations(x):  
    #Note input x must be list of integers?
    #Note if the list is given ascending order like [0,1,2] then the perms are produced in lexicographic order
    if len(x) == 1:
        return x
    else:
        temp = []
        for element in x:
            copy_x = x[:]
            copy_x.remove(element)
            recursive_perms = permutations(copy_x)            
            for elems in recursive_perms:
                if type(elems) is int:  #This is because when x = [0,1] elems are integers instead of lists              
                    temp.append([element]+[elems])
                else:
                    temp.append([element]+elems)
        return temp
        

def Problem24():
    data = [0,1,2,3,4,5,6,7,8,9]
    perms = permutations(data)
    perms =[[str(j) for j in i] for i in perms]
    perms = [''.join(i) for i in perms] 
    #lexicographic_order = sorted([int(i) for i in perms])
    return perms[10**6 - 1]

######################################################################################################################
								#Solution 2
								
								# -*- coding: utf-8 -*-
"""
Created on Sat Jun 28 22:08:22 2014

@author: Jasbir
""" 

import itertools

def Problem_24():
    data = [0,1,2,3,4,5,6,7,8,9]
    x = list(itertools.permutations(data))    
    return x[10**6 - 1]


#########################################################################################################################

if __name__ == "__main__":
    from time import time
    start = time()
    print "Answer is : ", Problem24()
    print "Time Taken : " , time() - start