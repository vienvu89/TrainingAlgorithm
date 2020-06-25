func birthday(s: [Int], d: Int, m: Int) -> Int {
    var totalWays = 0
    var sum = 0
    if s.count < m {
        return 0
    }
    
    for j in 0..<m {
        sum += s[j]
    }
    
    if sum == d {
        totalWays += 1
    }

    if s.count == m {
        return totalWays
    }
    
    for i in m..<s.count {
        sum = sum - s[i - m]  + s[i]
        if sum == d {
            totalWays += 1
        }
    }

    return totalWays
}
