int t[22][20002];
class Solution {
public:
    int subSetSum(vector<int>& nums,int sum){
        int n=nums.size();
        t[n+1][sum+1];
        for(int i=0;i<n+1;i++){
            for(int j=0;j<sum+1;j++){
                if(i==0){
                    t[i][j]=0;
                }
                if(j==0){
                    t[i][j]=1;
                }
            }
        }
        for(int i=1;i<n+1;i++){
            for(int j=0;j<sum+1;j++){
                if(nums[i-1]<=j){
                    t[i][j]=((t[i-1][j-nums[i-1]])+(t[i-1][j]));
                }else{
                    t[i][j]=t[i-1][j];
                }
            }
        }
        return t[n][sum];
    }
    int findTargetSumWays(vector<int>& nums, int target) {
        int So=0;target=abs(target);
        for(auto x:nums){
            So+=x;
        }
        if(target>So||(So+target)%2!=0) return 0;
        return subSetSum(nums,(So+target)/2);

    }
};