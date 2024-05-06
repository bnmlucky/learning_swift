func removeDuplicates(_ nums: inout [Int]) -> Int {
    // Early return if the array is empty
    if nums.isEmpty {
        return 0
    }
    // Initialize the first pointer (i) to the start of the array
    var i = 0
    // Iterate through the array using the second pointer (j)
    for j in 1..<nums.count {
        // If the current element at j is different from the element at i
        if nums[j] != nums[i] {
            // Increment i and set nums[i] to nums[j]
            i += 1
            nums[i] = nums[j]
        }
    }
    // Return the new length of the array with unique elements (i + 1)
    return i + 1
}

/* 
Explanation:
1.  Two-Pointer Technique:  use a two-pointer approach to remove duplicates from the array.
Initialize one pointer ('i') to the start of the array, which will track the position of the last unique element, and another pointer ('j') to iterate through the array.
2.  Iterate through the array:  as you iterate through the array with the pointer 'j', compare the current element ('nums[j]') with the element at index 'i'.
3.  If a unique element is found:  if 'nums[j]' is not equal to 'nums[i]', increment 'i' and update the value at index 'i' with 'nums[j]'.
This effectively shifts unique elements to the left side of the array.
4.  Return the length of the array with unique elements:  the length of the array with unique elements is 'i + 1'
This approach effectively removes duplicates from the array using two-pointer technique and does so in-place, meeting the requirements of the problem.
*/