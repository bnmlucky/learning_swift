class Solution {
    func romanToInt(_ s: String) -> Int {
        // Dictionary mapping Roman numerals to integer values
        let romanValues: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        // Initialize total sum to 0
        var total = 0
        // Iterate through the Roman numeral string
        let chars = Array(s)
        for i in 0..<chars.count {
            // Get the current Roman numeral character
            let currentChar = chars[i]
            // If this is not the last character and the next character represents a larger value
            if i < chars.count - 1 {
                let nextChar = chars[i + 1]
                // If the current character's value is less than the next character's value, subtract it
                if let currentValue = romanValues[currentChar], let nextValue = romanValues[nextChar], currentValue < nextValue {
                    total -= currentValue
                } else {
                    // Otherwise, add the current character's value to the total
                    if let currentValue = romanValues[currentChar] {
                        total += currentValue
                    }
                }
            } else {
                // For the last character, simply add its value to the total
                if let currentValue = romanValues[currentChar] {
                    total += currentValue
                }
            }
        }
        // Return the total sum
        return total
    }
}

/** 
1.  Create a dictionary mapping Roman numerals to their integer values:
This dictionary will help convert each Roman numeral character to its corresponding integer value.
2.  Iterate through the Roman numeral string:  
Process each character in the string, converting it to its corresponding integer value.
3.  Check for subtraction cases:
If a smaller numeral precedes a larger one, subtract the smaller value from the total;
otherwise, add value to the total.
4.  Return the total sum:  After processing the entire string, return the total sum, 
which represents the integer value of the Roman numeral.
Create a dictionary ('romanValues') mapping Roman numeral characters ('Character') to their integer values ('Int').
Initialize the total sum ('total') to 0.
Iterate through the Roman numeral string ('s') using a 'for' loop.
Get the current Roman numeral character ('currenChar').
Check if the current character is not the last character and if the next character represents a larger value.
If the current character's value is less than the next character's value, subtract the current character's value from the total.
Otherwise, add the current character's value to the total. 
For the last character, simply add its value to the total.
Return the total sum, which represents the integer value of the Roman numeral string.
**/
