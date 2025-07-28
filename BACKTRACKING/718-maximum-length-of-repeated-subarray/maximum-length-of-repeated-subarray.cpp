int static t[1002][1002];
class Solution {
public:
    int findLength(vector<int>& nums1, vector<int>& nums2) {
        int m=nums1.size();
        int n=nums2.size();
        t[m+1][n+1];
        int max_len=0;
        for(int i=0;i<m+1;i++){
            for(int j=0;j<n+1;j++){
                if(i==0||j==0){
                    t[i][j]=0;
                }else{
                    if(nums1[i-1]==nums2[j-1]){
                        t[i][j]=1+t[i-1][j-1];
                        max_len=max(max_len,t[i][j]);
                    }else{
                        t[i][j]=0;
                    }
                }
            }
        }
        return max_len;
    }
};