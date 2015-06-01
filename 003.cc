/* Only works with C++ 11 */
#include <cmath>
#include <vector>
#include <iostream>
#include <algorithm>

using std::cout; using std::cin ; using std::endl; using std::vector;using std::sort;

bool is_prime(long long num){
	if ((num == 2) || (num == 3))
        return true;
    else if ((num  % 2 == 0) || (num % 3 == 0))
        return false;
    else
    {
        const long limit = ceil(sqrt(num));
        for (long t = 5; t <= limit ; t += 6)
        {
            if ((num % t == 0) || (num % (t+2) == 0)) return false;
        }
    return true;
    }
}
//600851475143
int main()
{
    const long long number = 600851475143;
    const long long limit = sqrt(number);
    vector<long long> factors;
    for (int i = 2; i != limit; ++i){
        if (number%i == 0){
            if (is_prime(i)) factors.push_back(i);
            if (is_prime(number/i)) factors.push_back(number/i);
        }

    }
    sort(factors.begin(),factors.end());
    for (auto a : factors)
        cout << a << endl;
}

/*


    long long i = 0;
    cout << "Please enter a number to : " << endl;
    while (cin >> i)
    {
        cout << is_prime(i) << endl;
    }
*/
