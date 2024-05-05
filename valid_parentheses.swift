class Solution {
    func isValid(_ s: String) -> Bool {
        // Dictionary to map closing brackets to opening brackets
        let matchingBrackets:  [Character: Character] = [
            ")": "(",
            "}": "{",
            "]": "["
        ]
        // Create a stack to keep track of opening brackets
        var stack = [Character]()
        // Iterate through each character in the string
        for char in s {
            // Check if the character is a closing bracket
            if let openingBracket = matchingBrackets[char] {
                // If the stack is empty or the top of the stack doesn't match the opening bracket
                if stack.isEmpty || stack.removeLast() != openingBracket {
                    return false
                }
            } else {
                // If the character is an opening bracket, push it onto the stack
                stack.append(char)
            }
        }
        // If the stack is empty at the end, the string is valid
        return stack.isEmpty
    }
}

/* 
Explanation:
1.  Use a Stack:  a stack is an appropriate date structure for this problem because it allows you to push and pop elements in a last-in first-out (LIFO) manner.
2.  Iterate through the string:  for each character in the string, perform the following checks:
- if the character is an opening bracket ('(', '{', '['), push it onto the stack
- if the character is a closing bracket (')', '}', ']'), check if the stack is empty or if the top of the stack does not match the corresponding opening bracket.
- if either of these conditions is true, return false because the parentheses are not properly matched.
- otherwise pop the top element from the stack.
3.  Check the stack at the end:  if the stack is empty after processing the entire string, the string is valid because all opening brackets have been matched with closing brackets.
If the stack is not empty, return false.
This approach uses a stack to efficienty check the string for valid pairs and proper nesting of brackets, allowing you to determine whether the string is valid.
*/
