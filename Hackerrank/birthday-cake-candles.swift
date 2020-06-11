func birthdayCakeCandles(ar: [Int]) -> Int {
    if let a = ar.max() { 
        return ar.filter { $0 == a }.count
    }
    return 0
}