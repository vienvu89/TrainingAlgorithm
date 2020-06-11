func makingAnagrams(s1: String, s2: String) -> Int {
    var a = Array(s1)
    var b = Array(s2)

    let c = a.filter { b.contains($0) }
    let d = b.filter { a.contains($0) }

    let uniqueElement = Set(a)

    var count = 0
    for i in uniqueElement {
        let e = c.filter { $0 == i }.count
        let f = d.filter { $0 == i }.count
        count += e < f ? e : f
    }
    return a.count + b.count -  2 * count
}
