func lengthOfLastWord(_ s: String) -> Int {
    // Trim trailing spaces from the string
    let trimmedString = s.trimmingCharacters(in: .whitespaces)
    // Split the trimmed string by space 
    let words = trimmedString.components(separatedBy: " ")
    // Return the length of the last word
    return words.last?.count ?? 0
}

/*
To solve the "Length of Last Word" problem in Swift, you need to find the length of the last word in a string.
A word is defined as a sequence of non-space characters.
Use 'trimmingCharacters(in: )' method to remove leading and trailing whitespace characters from the string 's'.
This ensures that we get rid of any trailing spaces at the end of the string.
Use 'components(separatedBy: )' method to split the trimmed string into an array of substrings using the space character (" ") as the delimiter.
This gives us an array of words in the string.
Use the 'last' property to access the last element of the 'words' array, which represents the last word in the string.
If the array is empty, (i.e. if there are no words in the string), 'last' will return 'nil'.
Use the nil coalescing operator ('??') to return 0 if the last word is 'nil' (i.e. if there are no words in the string).
Otherwise, return he count of characters in the last word.
This solution efficiently finds the length of the last word in the string by first trimming any trailing spaces and then splitting the string into words.
It returns the length of the last word or 0 if there are no words in the string.
 */
