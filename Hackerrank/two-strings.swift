func twoStrings(s1: String, s2: String) -> String {
    let a = Set(Array(s1))
    let b = Set(Array(s2))

    let c = a.intersection(b)
    return c.count > 0 ? "YES" : "NO"
}