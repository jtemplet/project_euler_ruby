#include <iostream>
#include <vector>

using namespace std;

vector <unsigned long long> primes;

void factor(unsigned long long prod, unsigned long long div) {
 cout << "Prod = " << prod << ", div = " << div << endl;
 if (((div-1) == 1) || (div == 1)) {
   cout << "Found prime: " << prod << endl;
   primes.push_back(prod);
   return;
 }
 else if ((prod%div) == 0) {
   factor(prod/div, (prod/div)-1);
   factor(div, div-1);
 }
 else {
   factor(prod, div-1);
 }
}

void printPrimes() {
 for (int i = 0; i < primes.size(); i++) {
   cout << primes[i] << " ";
 }
 cout << endl;
}

void printMaxPrime() {
 unsigned long long max = 0;
 for (int i = 0; i < primes.size(); i++) {
   if (primes[i] > max) {
         max = primes[i];
       }
 }
 cout << "Max = " << max << endl;
}

int main() {
 cout << "Main() " << endl;
 unsigned long long seed = 600851475143;
 cout << "Assigned seed" << endl;
 factor(seed, seed-1);
 
 printPrimes();
 printMaxPrime();
 return 0;
}
