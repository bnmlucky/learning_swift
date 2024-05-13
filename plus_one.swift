func plusOne(_ digits: [Int]) -> [Int] {
    var result = digits // Make a copy of the input array
    // Iterate through the array in reverse order
    for i in stride(from: digits.count - 1, through: 0, by: -1) {
        // Increment the current digit by 1
        result[i] += 1
        // If the digit becomes 10, set it to 0 and carry over the 1
        if result[i] == 10 {
            result[i] = 0
        } else {
            // If the digit is less than 10, no need to carry over, so return the result
            return result
        }
    }
    // If the loop completes and there's still a carry, add it as the new digit at the beginning
    result.insert(1, at: 0)

    return result
}

/* 
To solve the "Plus One" problem in Swift, you are given a non-empty array representing a non-negative integer, where each element in the array represents a digit of the integer.
You need to add one to the integer represented by the array.
Make a copy of the array 'digits' to avoid modifying the original array.
Iterate through the array 'digits' in reverse order using a for loop.
This allows us to start adding one to the least significant digit (last element of the array).
Increment the current digit by 1.
If the current digit becomes 10 after incrementing, set it to 0 and continue the loop to carry over the 1 to the next higher-order digit.
If the current digit is less than 10, return the result immediately, as there's no need to carry over.
If the loop completes and there's still a carry, add it as the new digit at the beginning of the result array.
This solution efficiently handles the case where we need to add one to a non-negative integer represented by an array of digits.
It iterates through the array in reverse order, incrementing each digit and carrying over if necessary.
Finally, it handles the case where there is a carry after iterating through all the digits.

*/