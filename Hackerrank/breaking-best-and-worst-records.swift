func breakingRecords(scores: [Int]) -> [Int] {
    var highestScore = scores[0]
    var lowestScore = scores[0]
    var bestRecordBreak = 0
    var worstRecordBreak = 0
    for i in 1..<scores.count {
        let score = scores[i]
        if score > highestScore {
            bestRecordBreak += 1
            highestScore  = score
        } else if score < lowestScore {
            worstRecordBreak += 1
            lowestScore = score
        }
    }
    
    return [bestRecordBreak, worstRecordBreak]
}