# -*- coding: utf-8 -*-
"""
Created on Tue Jul  1 18:54:27 2014

@author: jasbir
"""



alphabets = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alp_values = [(alphabets.index(i)+1,i)  for i in alphabets]


def value(string):
	value = 0
	for i in string:
		value += (alphabets.index(i)+1)
	return value

def Problem22():
	f = open('prob_22_data.txt')
	line = f.read()
	line = line.split(',')
	line = [subline.strip('"')for subline in line]
	line.sort()
	sol = 0	
	for i in range(len(line)):
		#print line[i]
		sol += (i+1)*value(line[i])
	return sol

print 'The total of all the name scores in the file ', Problem22()