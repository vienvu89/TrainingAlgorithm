func gameOfThrones(s: String) -> String {
    let a = Array(s)

    let uniqueElement = Set(a)

    var elementCount: [Int] = []

    for i in uniqueElement {
        let d = a.filter { $0 == i }.count
        elementCount.append(d)
    }

    if a.count % 2 == 0 {
        for a in elementCount {
            if a % 2 == 1 {
                return "NO"
            }
        }
        return "YES"
    } else {
       var countOdd = 0
       for a in elementCount {
           if a % 2 == 1 {
               countOdd += 1
           }
           if countOdd > 1 {
               return "NO"
           }
       }
       if countOdd == 0 {
           return "NO"
       }
       return "YES"
    }
}