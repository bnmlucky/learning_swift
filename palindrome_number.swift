class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // Early return for negative numbers or numbers ending in zero (except zero itself)
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }
        // Initialize reversedHalf to 0
        var reversedHalf = 0
        // Make x mutable by changing to var
        var x = x
        // Iterate while x is greater than reversedHalf
        while x > reversedHalf {
            // Extract the last digit of x and add it to reversedHalf
            reversedHalf = reversedHalf * 10 + x % 10
            // Remove the last digit from x
            x /= 10
        }
        // Check if x is equal to reversedHalf or if x is equal to reversedHalf/10
        // the latter is used to handle odd-length numbers
        return x == reversedHalf || x == reversedHalf / 10
    }
}
/** 
In Swift, when an argument is passed into a function, it is by default immutable (a 'let' constant), 
so you cannot modify 'x' within the function. To solve this, you need to make 'x' mutable by explicitly declaring it as a 'var' when you receive the argument.
1.  Change the function parameter from 'x: Int' to 'var x: Int' so that x is mutanble within the function.
2.  Now you can use the division assignment 'x /= 10' without causing a compile error.
3.  Early returns for negative numbers or numbers ending in 0 (except zero itself)
4.  Define 'var x' to make 'x' mutable within the function.
5.  Iterate through the integer and extract the last digit from 'x', adding it to 'reversedHalf'. Update 'x' by dividing by 10.
6.  Return 'true' if 'x' is equal to 'reversedHalf' or 'reversedHalf / 10' to check for odd-length numbers; otherwise return 'false'.
By making 'x' mutable ('var' instead of 'let'), you can now perform the division assignment on 'x' without causing a compile error. 
**/
