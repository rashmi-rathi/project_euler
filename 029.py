# -*- coding: utf-8 -*-
"""
Created on Fri Jul 25 01:56:40 2014

@author: jasbir
"""
def problem_29() : return len(set([a**b for b in range(2,100+1) for a in range(2,100+1)]))