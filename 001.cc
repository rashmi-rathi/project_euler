#include <iostream>
using std::cin ; using std::cout; using std::endl;

#include <cmath>

int sum = 0 ;
int main()
{
	for (int i = 0 ; i != pow(10,3) ; ++i){
		if ((i % 3 ==0) || (i % 5 == 0))
			sum += i;
	}
	cout << "The answer is " << sum << endl;
	return 0;
}
