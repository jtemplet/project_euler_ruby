#include <iostream>

unsigned long long TriangleNumberDivisors(int divisorTarget)
{
     unsigned long long triangleNum=1;
         unsigned long long currentNum=2;
     int numOfDivisors=0;


     numOfDivisors=NumOfDivisors(triangleNum);
     while(numOfDivisors<divisorTarget)
     {
         triangleNum+=currentNum;
         currentNum++;
         numOfDivisors=NumOfDivisors(triangleNum);
     }

     return triangleNum;
}

 int NumOfDivisors(unsigned long long dividend)
{
    int numDivisors=0;
    set<unsigned long long> divisors;
    set<unsigned long long>::iterator it;

    for(unsigned long long index=1; index<=dividend/2; index++)
    {
        if(dividend%index==0)
        {
            divisors.insert(index);
            numDivisors++;
            it=divisors.find(dividend/index);
            if(it==divisors.end())
            {
                divisors.insert(dividend/index);
                numDivisors++;
            }
              /*for some reason not checking for dups above and 
just checking for how many items are in the set at the end is slower
             for(it=divisors.begin();it!=divisors.end();it++)
             {
                   numDivisors++;
             }
                  */
        }
    }

    return numDivisors;
}

int main()
{
    cout<<TriangleNumberDivisors(500)<<endl;

    return 0;
}

