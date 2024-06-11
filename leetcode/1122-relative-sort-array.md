# Problem:
https://leetcode.com/problems/relative-sort-array/

# Approach:
Sort the elements of `arr1` that appear in `arr2` according to the order of `arr2`. The elements of `arr1` that do not appear in `arr2` will follow in ascending order.

- Use a hashmap to count each element in `arr2` that appears multiple times in `arr1` and save elements that do not appear in `arr2` in another array.
- Create an array to store the final result.
- Loop through `arr2`, and for each element that appears in `arr1` multiple times, add it to the final result array.
- Sort the elements of `arr1` that do not appear in `arr2` and append them to the final result array.

# Code:
```swift
func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var counts = [Int: Int]()
    for num in arr2 {
        counts[num] = 0
    }
    
    var result = [Int]()
    for num in arr1 {
        if let count = counts[num] {
            counts[num]! += 1
        } else {
            result.append(num)
        }
    }
    
    var finalResult = [Int]()
    for num in arr2 {
        var total = counts[num] ?? 0
        while total > 0 {
            finalResult.append(num)
            total -= 1
        }
    }
    finalResult.append(contentsOf: result.sorted())
    
    return finalResult
}
```

