class Solution {
public:
    bool canPlaceFlowers(vector<int>& nums, int n) {
        if(n==0) return true;
        

        for(int i=0;i<nums.size();i++){
            if((nums[i]==0)&&((i==0)||(nums[i-1]==0))&&((i==nums.size()-1)||nums[i+1]==0)){
                nums[i]=1;
                n--;
            }
        }
        

        return n<=0;
    }
};