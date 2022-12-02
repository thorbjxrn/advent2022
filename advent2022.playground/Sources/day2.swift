import Foundation

public func day2(inputString: String) -> Int {
    var scores = parseInput(inputString: inputString)
    return scores.reduce(0, +)

}

private func parseInput(inputString: String) -> [Int] {
    let numbers = inputString.components(separatedBy: "\n")
    return numbers.compactMap({ string in
        switch string {
        case "A X":
            return 1 + 3
        case "A Y":
            return 2 + 6
        case "A Z":
            return 3 + 0
        case "B X":
            return 1 + 0
        case "B Y":
            return 2 + 3
        case "B Z":
            return 3 + 6
        case "C X":
            return 1 + 6
        case "C Y":
            return 2 + 0
        case "C Z":
            return 3 + 3
        default:
            return 0
        }
    })
}
