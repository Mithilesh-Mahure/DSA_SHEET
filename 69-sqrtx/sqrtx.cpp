class Solution {
public:
    int mySqrt(int x) {
        if(x==0||x==1) return x;

        long long left=1;
        long long right=x/2;
        int ans=0;

        while(left<=right){
            long long mid=left+(right-left)/2;
            long long square=(long long)mid*mid;

            if(square==x) return mid;
            else if(square<x){
                ans=mid;
                left=mid+1;
            }else{
                right=mid-1;
            }
        }
        return ans;

    }
    
};