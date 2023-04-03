#include <iostream>
using namespace std;
int main()
{
        int s =0;
        int digit = 64;
        int array1 [13] = {112,113,115,64,64,64,64};
        int array2 [13] = {112,113,115,64,64,64,64};
        for(int i = 0;i<13;i++)
        {
                array[i] &= digit;
                if (array[i] == digit)
                {
                        array2[i] >>= 1;
                        s += array2[i];
                }
        }
        cout << s;
        cout << "\n";
        return 0;
