# Problem:
https://leetcode.com/problems/sort-colors/description/

# Approach:
## My Solution:
- Use a hashtable to store how many times each color appears in the array.
- Loop through the array of colors `[0, 1, 2]` and add to a new array each color the number of times it appears in the original array, ensuring they appear in adjacent positions.
## Follow up or better solution:
we can use two pointer:
- `p0 = 0` is start of 0 index
- `p2 = nums - 1` is start of 2 index
- we loop until `i <= p2`:
	- when `nums[i] = 0` we swap `nums[i]` and `nums[p0]`
	- when `nums[i] = 2` we swap `nums[i]` and `nums[p2]`
	- else we will increase `i`
# Code:

```swift
func sortColors(_ nums: inout [Int]) {
    var counts = [0: 0,
                  1: 0,
                  2: 0]
    for num in nums {
        counts[num]! += 1
    }
    
    var result = [Int]()
    for num in [0, 1, 2]  {
        var value = counts[num] ?? 0
        while value > 0 {
            result.append(num)
            value -= 1
        }
        
    }
    nums = result
}
```
## another solution
```Swift
func sortColors(_ nums: inout [Int]) {
    var p0 =  0
    var p2 =  nums.count - 1
    
    var i = 0
    while i <= p2 {
        if nums[i] == 0, i > p0 {
            nums.swapAt(i, p0)
            p0 += 1
        } else if nums[i] == 2, i < p2  {
            nums.swapAt(i, p2)
            p2 -= 1
            
        } else {
            i += 1
        }
    }
}
```