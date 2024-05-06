func strStr(_ haystack: String, _ needle: String) -> Int {
    // Check if needle is empty
    if needle.isEmpty{
        return 0 // Return 0 if needle is empty
    }
    // Find the range of the first occurrence of needle in haystack
    if let range = hastack.range(of: needle) {
        // Return the starting index of the range
        return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
    }
    // If needle is not found, return -1
    return -1
}

/* 
Explanation:
In Swift, you can solve this problem using the built-in 'range(of:)' method available on strings.
This method returns the range of the first occurrence of a specified substring within a string, and you can calculate the starting index from the range.
If the substring is not found, the method returns -1.
*/