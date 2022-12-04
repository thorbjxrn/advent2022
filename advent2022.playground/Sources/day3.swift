import Foundation

public func day3(inputString: String) -> Int {
    var numbers = parseInput(inputString: inputString)

    return numbers.reduce(0, +)
}

private func parseInput(inputString: String) -> [Int] {
    let lookupValues = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").enumerated()
    print("lookupValues")

    let numbers = inputString.components(separatedBy: "\n").compactMap { string as String in
        let priority = {
            let array = Array(string)
            print(array.size)

            array.makeIterator()
        }
    }
    return numbers
}
