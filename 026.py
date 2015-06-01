# -*- coding: utf-8 -*-
"""
Created on Wed Jul  2 01:26:22 2014

@author: jasbir
"""
def div_seq(x):
    #This function gives the reccuring sequence we get from 1/x.
    #i.e 1/2 = 0.5000000... , for x = this function would output 0
    #	1/7 = 0.142857142857... , this function would output 142857#	1/6 = 0.1666666		, ......................output 6
    quotient, remainder = divmod(1,x)
    quotient_list,remainder_list = [quotient],[remainder]
    while True:
        quotient , remainder = divmod(remainder*10,x)
        if remainder in remainder_list:
            index = remainder_list.index(remainder)
            #print index
            remainder_list.append(remainder)
            quotient_list.append(quotient)
            return quotient_list[index+1:]
        else:
            remainder_list.append(remainder)
            quotient_list.append(quotient)
def Problem26():
    d,longest_cycle = 1,len(div_seq(1))
    for i in xrange(1,1000+1):
        if len(div_seq(i)) > longest_cycle:
            d,longest_cycle =i,len(div_seq(i))
    print '1/',d,'contains the longest recurring cycle(for d<1000) in its decimal fraction part of length',longest_cycle
    return  d,longest_cycle
import time
start = time.time()
x = Problem26()
time_elapsed = time.time()-start
print time_elapsed
