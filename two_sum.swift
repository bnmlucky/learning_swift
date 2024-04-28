class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Create a dictionary to store complements and their indices
        var numDict = [Int: Int]()
        // Iterate through the array
        for(i, num) in nums.enumerated() {
            // Calculate the complement
            let complement = target - num
            // Check if the complement exists in the dictionary
            if let complementIndex = numDict[complement] {
                // If found, return the indices of the complement and the current element
                return [complementIndex, i]
            }
            // Add the current number and its index to the dictionary
            numDict[num] = i 
        }
        // Return an empty array if no solution found (this shouldn't happen according to the problem statement)
        return []
    }
}
/** 
1.  Define the function 'twoSum' that takes an array of integers 'nums' and an integer 'target' as arguments and returns an array of integers.
2.  Create a dictionary called 'numDict' to store complements and their indices.
The key is the complement of the target sum (target minus the current number), and the value is the index of the current number.
3.  Iterate through the array of 'nums' using a 'for' loop.
4.  Calculate the complement of the current number by subtracting the current number ('num') from the target.
5.  Check if the complement exists in the dictionary ('numDict').
If it does, return an array containing the index of the complement (from the dictionary) and the index of the current number ('i').
This indicates that the two numbers add up to the target.  
If the complement was not found, add the current number ('num') and its index ('i') to the dictionary ('numDict') to track the complement for future iterations.
If no solution is found, return an empty array (though this case shouldn't happen according to problem statement).

**/