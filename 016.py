# -*- coding: utf-8 -*-
"""
Created on Wed Jun 11 19:50:51 2014

@author: Jasbir
"""
#==============================================================================
# 			Solution 1
# This relies on python's string manipulation
#==============================================================================


def solution_1():
	number = 2**1000
	number = str(number)
	length = len(number)
	Sum = 0
	
	for i in range(0,length):
	    Sum = Sum + int(number[i])
	
	print Sum
	
	
	

#==============================================================================
# 			Solution 2
# This solution doesn't rely on long integers
# It basically uses arrays/lists to double the number ........
#==============================================================================


number = '2'

def doubleNumber(x):
	# Note : the input must be as a string, this function doubles the number 
	#        of an arbitrary length
	x = [int(i) for i in x]
	double_number = []
	length = len(x)
	for i in range(length):
			double_number.append(2*x[i])
	
	double_number.reverse()
	length = len(double_number)
	for i in range(length):
		if double_number[i] > 9 and i != length - 1:
			double_number[i] = double_number[i] % 10
			double_number[i+1] = double_number[i+1]+1
		elif double_number[i] > 9 and i == length - 1:
			double_number[i] = double_number[i] % 10
			double_number.append(1)
	double_number.reverse()
	del i
	double_number = [str(i) for i in double_number]
	return ('').join(double_number)

def two_power(n):
	# This function is equivalent to 2**n
	x = 2
	for i in range (1,n):
		x = doubleNumber(str(x))
	return x


#########################################################################################################################

if __name__ == "__main__":
    from time import time
    start = time()
    print 'The answer is ', sum([int(i) for i in two_power(1000)])
    print "Time Taken : " , time() - start