func searchInsert(_ nums: [Int], _ target: [Int]) -> Int {
    var low = 0
    var high = nums.count - 1

    while low <= high {
        let mid = low + (high - low) / 2

        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return low
}

/*
To solve the "Search Insert Position" problem in Swift, you need to find the index where a given target value should be inserted into a sorted array.
If the target is already present in the array, return its index.
If not, return the index where it would be if it were inserted in order.
Initialize variables 'low' and 'high' to the start and end indices of the array respectively.
Use a binary search algorithm to find the insertion position of the target in the sorted array.
Inside the while loop, calculate the middle index 'mid'.
If the value at 'mid' equals the target, return 'mid'.
If the value at 'mid' is less than the target, update the 'high' to 'mid + 1' to search the right half of the array.
If the value at 'mid' is greater than the target, update the 'high' to 'mid - 1' to search the left half of the array.
Repeat until 'low' is greater than 'high', which indicates that the search has ended.
If the target is not found in the array, return the value of 'low'.
This represents the insertion position of the target in the array.
This solution utilizes the binary search algorithm to efficiently find the insertion position of the target in the sorted array.
It has a time complexity of O(log n), where n is the number of elements in the array.
 */