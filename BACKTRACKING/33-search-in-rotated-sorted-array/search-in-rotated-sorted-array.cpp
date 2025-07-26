class Solution {
public:
    int findMinIndex(vector<int>& nums){
        int ans;
        int start=0;
        int end=nums.size()-1;
        if(end==0) return end;
        while(start<=end){
            int mid=start+(end-start)/2;
            int prev=((mid+nums.size()-1)%(nums.size()));
            int next=((mid+1)%(nums.size()));
            if(nums[mid]>nums[next]) return next;
            if(nums[mid]<nums[prev]) return mid;
            if(nums[mid]>=nums[start]) start=mid+1;
            else end=mid-1;
        }
        return -1;
    }
    int BS(vector<int>& nums,int target,int start,int end){
        while(start<=end){
            int mid=start+(end-start)/2;
            if(nums[mid]==target) return mid;
            if(nums[mid]>target) end=mid-1;
            else start=mid+1;
        }
        return -1;
    }
    int search(vector<int>& nums, int target){
        int minIndex=findMinIndex(nums);
        int start=0;
        int end=nums.size()-1;
        int ans1=BS(nums,target,start,minIndex-1);
        int ans2=BS(nums,target,minIndex,end);
        if(ans1!=-1){
            return ans1;
        }
        return ans2;
    }
};