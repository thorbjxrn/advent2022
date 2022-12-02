import Foundation

public func day1(inputString: String) -> Int {
    var numbers = parseInput(inputString: inputString)

    // return numbers.max()!

    numbers.sort{ $0 > $1 }

    return Array(numbers.prefix(3)).reduce(0, +)
    
}

private func parseInput(inputString: String) -> [Int] {
    let numbers = inputString.components(separatedBy: "\n\n").compactMap {
        String($0).components(separatedBy: "\n").compactMap{ Int($0) }.reduce(0, +)
    }
    return numbers
}
