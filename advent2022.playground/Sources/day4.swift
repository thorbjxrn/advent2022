import Foundation

public func day4(inputString: String) -> Int {
    let ints = parseInput(inputString: inputString)
    // print(ints)

    // return countEnclosed(integerArray: ints)
    return countOverlapping(integerArray: ints)
}

private func countEnclosed(integerArray:[[Int]]) -> Int {
    var count = 0
    for array in integerArray {
        if array[1] < array[2] || array[0] > array[3] { //not neccessary but sligthly more efficient iteration
            count += 0
        }
        else if array[0] >= array[2] && array[1] <= array[3] || array[2] >= array[0] && array[3] <= array[1] {
            count += 1
        }
    }
    return count
}

private func countOverlapping(integerArray:[[Int]]) -> Int {
    var count = 0
    for array in integerArray {
        if array[1] < array[2] || array[0] > array[3] { //not neccessary but sligthly more efficient iteration
            count += 0
        }
        else {
            count += 1
        }
    }
    return count
}

private func parseInput(inputString: String) -> [[Int]] {
    return inputString.components(separatedBy: "\n").compactMap({ string in
        guard !string.isEmpty else {
            return nil
        }

        let separators = CharacterSet(charactersIn: ",-")
        let touple = string.components(separatedBy: separators).compactMap({ stringNumber in
            return Int(stringNumber)
        })
        //let ranges = touple[0].components(separatedBy: "-"), touple[1].components(separatedBy: "-")
        //let sum = Int(ranges[0])! - Int(ranges[1])!
        //let result: String = "\()"

        //TODO: day 4
        return touple
    })

}
