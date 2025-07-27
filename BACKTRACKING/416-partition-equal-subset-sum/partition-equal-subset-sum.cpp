int static t[202][10002];
class Solution {

public:
    bool subSetSum(vector<int>& nums,int sum){
        int n=nums.size();
        t[n+1][sum+1];
        for(int i=0;i<n+1;i++){
            for(int j=0;j<sum+1;j++){
                if(i==0){
                    t[i][j]=false;
                }
                if(j==0){
                    t[i][j]=true;
                }
            }
        }
        for(int i=1;i<n+1;i++){
            for(int j=1;j<sum+1;j++){
                if(nums[i-1]<=j){
                    t[i][j]=((t[i-1][j-nums[i-1]])||(t[i-1][j]));
                }else{
                    t[i][j]=t[i-1][j];
                }
            }
        }
        return t[n][sum];
    }
    bool canPartition(vector<int>& nums) {
        int sum_nums=0;
        for(auto x:nums){
            sum_nums+=x;
        }
        if((sum_nums%2)!=0){
            return false;
        }else{
            return subSetSum(nums,sum_nums/2);
        }
    }
};