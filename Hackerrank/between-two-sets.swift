func getTotalX(a: [Int], b: [Int]) -> Int {
    // Write your code here
    var gcd = b[0]
    for i in 1..<b.count {
        gcd = findGCD(a: gcd, b: b[i])
    }
    
    var lcm = a[0]
    
    for j in 1..<a.count {
        lcm = findLCM(a: lcm, b: a[j])
    }
    
    let divisors = findAllDivisors(n: gcd)
    var count = 0
    for divisor in divisors {
        if divisor % lcm == 0 {
            count += 1
        }
    }

    return count
}

func findAllDivisors(n: Int) -> [Int] {
    var i = 1
    var result  = [Int]()
    while i <= Int(sqrt(Float(n))) {
        if n % i == 0 {
            if n / i == i  {
                result.append(i)
            } else {
                result.append(i)
                result.append(n / i)
            }
        }
        i += 1
    }
    
    return result
}

func findGCD(a: Int, b: Int) -> Int {
    var c = a
    var d = b
    while c > 0 {
        let temp = c
        c = d % c
        d = temp
    }
    
    return d
}

func findLCM(a: Int, b: Int) -> Int {
    let gcd = findGCD(a: a, b: b)
    return a *  b / gcd
}