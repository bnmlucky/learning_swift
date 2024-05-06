func removeElement(_ nums: inout[Int], _ val: Int) -> Int {
    // Initialize the first pointer (i) to the start of the array
    var i = 0
    // Iterate through the array using the second pointer (j)
    for j in 0..<nums.count {
        // If the current element at j is not equal to the specified value
        if nums[j] != val {
            // Copy nums[j] to nums[i] and increment i
            nums[i] = nums[j]
            i += 1
        }
    }
    // Return the new length of the array after removing the specified element
    return i 
}

/* 
Explanation:
1.  Two-Pointer Technique:  use a two-pointer approach to remove the specified element from the array.
Initialize one pointer ('i') to track the position of the next valid element, and another pointer ('j') to iterate through the array.
2.  Iterate through the array:  as you iterate through the array with the pointer ('j'), check if the current element ('nums[j]') is not equal to the specified value ('val').
3.  Copy the element:  if the current element is not equal to the specified value, copy the element to the position indicated by the pointer 'i' and increment 'i'.
4.  Return the new length:  return the length of the array with the specified element removed, which is equal to 'i'.
This approach efficiently removes all instances of the specified element from the array by shifting non-'val' elements to the left side of the array and returning the new length of the array after removal. 
*/