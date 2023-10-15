

class Solution {
    public ListNode deleteDuplicates(ListNode head) {
        if(head != null && head.next != null){
  ListNode prev = head;
            
            ListNode temp = prev.next;
            
          
       while(temp != null ){
                if( prev.val == temp.val){
                    temp = temp.next;
                    continue;
                }
                prev.next = temp;
                prev = temp ;
                temp = temp.next;
            }

        prev.next = null;
        }
          
        return head;
    }
}

  class ListNode {
      int val;
      ListNode next;
      ListNode() {}
      ListNode(int val) { this.val = val; }
      ListNode(int val, ListNode next) { this.val = val; this.next = next; }
  }
 
