/**
Definition for a singly-linked list.
public class listNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
**/
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        // Create a dummy node to serve as the head of the merged linked list
        let dummyNode = ListNode(0)
        // Initialize a current pointer to the dummy node
        var current = dummyNode
        // Initialize pointers to traverse list1 and list2
        var l1 = list1
        var l2 = list2
        // Iterate through both lists while neither list is empty
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                // If l1's current node value is less than or equal to l2's, append l1's node to the merged list
                current.next = l1
                // Move to the next node in l1
                l1 = l1?.next
            } else {
                // Otherwise append l2's node to the merged list
                current.next = l2
                // Move to the next node in l2
                l2 = l2?.next
            }
            // Move the current pointer to the latest node added to the merged list
            current = current.next!
        }
        // Attach any remaining nodes from l1 or l2 to the merged list
        current.next = l1 ?? l2
        // Return the merged list starting from the next node of the dummy node
        return dummyNode.next
    }
}

/** 
Explanation:
1.  Initialize a dummy node:  create a dummy node to serve as the head of the merged linked list.
This simplifies the process by providing a reference point to start the merged list.
2.  Initialize a current pointer:  Initialize a 'current' pointer to the dummy node.
This pointer will help you traverse the merged list.
3.  Traverse both lists: iterate through 'list1' and 'list2' while neither list is empty. 
Compare the current nodes' values from each list and append the smaller value to the merged list.
4.  Update pointers:  after appending the smaller node to the merged list, move the pointer of the corresponding list ('list1' or 'list2') to the next node.
5.  Attach remaining nodes:  once you have traversed one of the lists completely, attach any remaining nodes from the other list to the merged list.
6.  Return the merged list:  return the 'next' of the dummy node, which is the head of the merged linked list. 
This approach uses a two-pointer technique to iterate through both lists and build the merged list efficiently, maintaining the sorted order of the lists.

**/