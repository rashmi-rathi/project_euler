import euler

def PrimeFactors(n):
    if n%2 ==0:
        print(2)
    #for j in range(1,n,2):
    j=1
    while j!=n and n!=1:
        j=j+2
        if euler.is_prime(j)== True and n%j==0:
            n=n/j
            print(j)

#n = input('Enter number ')
import time
start_time = time.time()
PrimeFactors(int(600851475143))
print('finished')
print time.time()-start_time ,"seconds"

