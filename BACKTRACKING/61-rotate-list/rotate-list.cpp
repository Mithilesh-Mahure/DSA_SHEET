/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* rotateRight(ListNode* head, int k) {
        ListNode* temp=head;
        if(!head||!head->next||k==0) return head;
        int size=1;
        while(temp->next){
            temp=temp->next;
            size++;
        }
        k=k%size;
        if(k==0)return head;
        temp->next=head;
        
        int end=size-k;
        temp->next=head;
        ListNode* new_end=head;
        
        for(int i=1;i<end;i++){
            new_end=new_end->next;
        }
        
        ListNode* newHead=new_end->next;
        new_end->next=NULL;
        return newHead;
    }
};