# Problem
https://leetcode.com/problems/score-of-a-string/

# Approach
- Convert the string `s` to an array of characters.
- Loop through the array up to its second-to-last element.
- For each pair of adjacent characters, calculate the absolute difference of their ASCII values and add this value to a sum variable.

# Code: 

```Swift
func scoreOfString(_ s: String) -> Int {
    var sum = 0
    let characters = Array(s)
    
    for i in 0..<characters.count - 1 {
        let currentCharacter = characters[i]
        let nextCharacter = characters[i + 1]
        
        let currentValue = currentCharacter.unicodeScalars.first?.value ?? 0
        let nextValue = nextCharacter.unicodeScalars.first?.value ?? 0
        
        let difference = abs(Int(currentValue) - Int(nextValue))
        
        sum += difference
    }
    
    return sum
}
```

