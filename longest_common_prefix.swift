class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        // Early return if the array is empty
        if strs.isEmpty {
            return ""
        }
        // Identify the shortest string in the array
        var shortestString = strs[0]
        for str in strs {
            if str.count < shortestString.count {
                shortestString = str
            }
        }
        // Iterate through each character index of the shortest string
        for i in 0..<shortestString.count {
            // Get the current character from the shortest string
            let charIndex = shortestString.index(shortestString.startIndex, offsetBy: i)
            let currentChar = shortestString[charIndex]
            // Check the character at the same index in each string
            for str in strs {
                // If a mismatch if found, return the common prefix up to this index
                if str[str.index(str.startIndex, offsetBy: i)] != currentChar {
                    return String(shortestString[..<charIndex])
                }
            }
        }
        // If no mismatch is found, return the entire shortest string
        return shortestString
    }
}
/** 
1.  Check for an empty array: if the input array is empty, return the empty string.
2.  Identify the shortest string:  The longest common prefix cannot be longer than the shortest string in the array, so identify the shortest string in the input array.
3.  Iterate through the characters in the shortest string:  for each character in the shortest string, compare it with corresponding character in each string of the array.
4.  If a mismatch is found:  as soon as a mismatch is found (i.e., the characters at the same index in differen strings are not the same), stop the iteration and return the common prefix found so far.
5.  If no mismatch is found:  If you reach the end of the shortest string without finding a mismatch, the entire shortest string is the longest common prefix.
If the array is empty, there is no common prefix, so return an empty string.
Identify the shortest string in the array.
The longest common prefix cannot be longer than the shortest string, so you can use it to set a limit on your iteration.
Iterate through each character index of the shortest string.
Get the current character ('currentChar') from the shortest string at the current index ('i').
Compare the current character with the character at the same index in each string of the array ('str'). 
If there is a mismatch, return the common prefix up to the current index ('String(shortestString[..<charIndex])').
If you reach the end of the shortest string without finding a mismatch, return the entire shortest string as the longest common prefix. 
**/