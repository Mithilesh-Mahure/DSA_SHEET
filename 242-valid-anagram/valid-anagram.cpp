class Solution {
public:
    bool isAnagram(string s, string t) {
        unordered_map<char,int> mp1;
        unordered_map<char,int> mp2;
        for(auto x:s){
            mp1[x]++;
            
        }

        for(auto y:t){
            mp2[y]++;
        }
        return mp1==mp2;

    }
};