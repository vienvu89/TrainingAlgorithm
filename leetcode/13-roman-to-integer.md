# Problem:
https://leetcode.com/problems/roman-to-integer/

# Approach:

- Convert string to array characters
- loop through array if char is `I`, `X`, `C` we will check next char:
	- `I`: `V`, `X` we will plus match value and make loop i increase 2
	- `X`: `L`, `C`
	- `C`: `D`, `M`
	- else we will plus with value 

# Code:

```Swift
func romanToInt(_ s: String) -> Int {
    let values = ["I": 1,
                  "V": 5,
                  "X": 10,
                  "L": 50,
                  "C": 100,
                  "D": 500,
                  "M": 1000]
    let characters = Array(s)
    var i = 0
    var sum = 0
    while i < characters.count {
        var char = String(characters[i])
        
        switch char {
        case "I":
            if i == characters.count - 1 {
                sum += 1
                i += 1
            } else {
                if characters[i + 1] == "V" {
                    sum += 4
                    i += 2
                } else if characters[i + 1] == "X" {
                    sum += 9
                    i += 2
                } else {
                    sum += 1
                    i += 1
                }
            }
            
        case "X":
            if i == characters.count - 1 {
                sum += 1
                i += 10
            } else {
                if characters[i + 1] == "L" {
                    sum += 40
                    i += 2
                } else if characters[i + 1] == "C" {
                    sum += 90
                    i += 2
                } else {
                    sum += 10
                    i += 1
                }
            }
            
        case "C":
            if i == characters.count - 1 {
                sum += 100
                i += 1
            } else {
                if characters[i + 1] == "D" {
                    sum += 400
                    i += 2
                } else if characters[i + 1] == "M" {
                    sum += 900
                    i += 2
                } else {
                    sum += 100
                    i += 1
                }
            }
            
        default:
            sum += values[char] ?? 0
            i += 1
        }
    }
    
    return sum
}
```
