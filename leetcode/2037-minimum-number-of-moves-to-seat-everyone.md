# Problem:
https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/description/

# Approach:

- sorted 2 array 
- and compare different each item in 2 array in same position
- total different is the move we need

# Code: 
```Swift
func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {

	let seatsSorted = seats.sorted()
	
	let studentsSorted = students.sorted()
	
	var total = 0
	
	for i in 0..<seats.count {
	
		total += abs(seatsSorted[i] - studentsSorted[i])
	
	}
	
	return total

}
```