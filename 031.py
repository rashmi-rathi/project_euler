
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 25 23:48:50 2014

@author: Jasbir
"""
#Using PyPy is actually slower, I think?

coins_list = [1, 2, 5, 10, 20, 50, 100, 200]

def ways_1(n): # This gives the answer in 150 s. 
    memo = [[tuple()],[(1)]]
    for a in range(2,n+1):
        answer = []
        for b in coins_list:
            if (a-b) == 0 :
                answer.append((b))
            elif (a-b) == 1:
                answer.append((1,b))
            elif (a-b) > 1:
                temp = memo[a-b]
                for c in temp:
                    if type(c)==int:
                        x = [c]
                    else:
                        x = list(c)
                    x.append(b)
                    answer.append(tuple(sorted(x)))
            else:
                pass
        temp_2 = list(set(answer))
        memo.append(temp_2)
    return memo[n]

def ways_2(n): #This gives answer in 250 s. using 
    memo = [[[]],[[1]]]
    for a in range(2,n+1):
        answer = []
        for b in coins_list:
            if (a-b) > -1:
                temp = memo[a-b]
                for c in temp:
                    x = c[:]
                    x.append(b)
                    answer.append(sorted(x))
            else:
                pass
        temp_1 = set([tuple(elem) for elem in answer])
        temp_2 = list([list(elem) for elem in temp_1])
        memo.append(temp_2)
    return memo[n]

#Using PyPy on 48 secs , CPython : 630 secs ? LOL
def brute_force_1():
    i = 1
    for x1 in xrange(2 + 1):
        for x2 in xrange(4+1):
            for x3 in xrange(10+1):
                for x4 in xrange(20+1):
                    for x5 in xrange(40+1):
                        for x6 in xrange(100+1):
                            for x7 in xrange(200+1):
                                if (x7 + 2*x6 + 5*x5 + 10*x4 + 20*x3 + 50*x2 + 100*x1  == 200):
                                    i += 1
    return i

# Using PyPy takes 0.76 seconds.
def brute_force_2():
    t = 200 #target
    ways = 1 # as 200 is one way to make the sum.
    for x1 in xrange(t+1):
        t1 = t - x1
        for x2 in xrange(0,t1 + 1,2):
            t2 = t1 -x2
            for x3 in xrange(0,t2 + 1,5):
                t3 = t2 - x3
                for x4 in xrange(0,t3 + 1,10):
                    t4 = t3 - x4
                    for x5 in xrange(0,t4 + 1, 20):
                        t5 = t4 - x5
                        for x6 in xrange(0,t5+1,50):
                            t6 = t5 - x6
                            for x7 in xrange(0,t6 + 1,100):
                               if (x1 + x2 + x3 + x4 + x5 + x6 + x7 == 200):
                                   ways += 1
    return ways


if __name__ == '__main__':
    import time
    start = time.time()
    #print 'Answer is : ', len(ways_1(200))
    print 'Answer is : ', brute_force_2()
    print 'Time Taken : ', time.time() - start
