import euler

def solution_1():    
	n=3
	SumPrimes = 2

	while n < 2*(10**6):
		if euler.is_prime(n) == True:
		   SumPrimes = SumPrimes + n
		n=n+2
	return SumPrimes

def solution_2():
	primes = euler.sieve(2*10**6)
	Sum = 0
	for i in primes:
		Sum = Sum + i
	return Sum
 
if __name__ == "__main__":
    import time
    start = time.time()
    x = solution_1()
    print "time taken : ", time.time() - start
    print "answer is " , x
