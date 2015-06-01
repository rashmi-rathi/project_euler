def is_prime(num):
    if num <= 3:
        if num <= 1:
            return False
        return True
    if not num % 2 or not num % 3:
        return False
    for i in range(5, int(num ** 0.5) + 1, 6):
        if not num % i or not num % (i + 2):
            return False
    return True

def sieve(n):
    primes = []
    a = [True]*n
    a[0] , a[1] = False , False
    for i, isPrime in enumerate(a):
        if isPrime :
            primes.append(i)
            for j in range(i,n,i):
                a[j] = False
    return primes

