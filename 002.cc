#include <cmath>
#include <iostream>
using std::cin ; using std::cout ; using std::endl;

int main(){
    int fib1 = 1 , fib2 = 1, result = 0, sum = 2;
    while (result < 4*pow(10,6)){
    	result = fib1 + fib2;
    	fib2 = fib1;
    	fib1 = result;
    	if (result % 2 == 0)
    		sum += result;
    }
    cout << "The answer is : " << sum << endl;
    return 0;
}
