# Problem:

https://leetcode.com/problems/minimum-increment-to-make-array-unique/description/

# Approach:
- We sort this array first
- User `nextUnique` to track current unique number
- Loop through array, if num less than current `unique` it mean this num is not unique, we should increase this num to current `unique` then move need is `nextUnique - num`
- if num is equa or large we should increase `nextUnique to this number`
- we increase `nextUnique` to make sure this variable is unique

# Code:
```Swift
func minIncrementForUnique(_ nums: [Int]) -> Int {
    // Step 1: Sort the array
    var sortedNums = nums.sorted()
    // Step 2: Use a variable to track the next available unique number
    var moves = 0
    var nextUnique = sortedNums[0]
    
    for num in sortedNums {
        print(num, nextUnique)
        if num < nextUnique {
            moves += nextUnique - num
        } else {
            nextUnique = num
        }
        nextUnique += 1
    }
    
    return moves
}
```