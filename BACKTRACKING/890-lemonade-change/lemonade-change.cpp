class Solution {
public:
    bool lemonadeChange(vector<int>& nums) {

        int five = 0, ten = 0, twenty = 0;
        for (int i = 0; i < nums.size(); i++) {
            if (nums[i] == 5)
                five++;
            else if (nums[i] == 10 && five > 0)
                five--, ten++;
            else if (nums[i] == 20 && ten>0 && five > 0)
                five--, ten-- , twenty++;
            else if (nums[i] == 20 && five > 2)
                five--, five-- , five--;
            else return false;

        }
        return true;
    }
};