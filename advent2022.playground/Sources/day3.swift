import Foundation

private let GROUP_SIZE = 3

public func day3(inputString: String) -> Int {
    let numbers = parseInput(inputString: inputString)
    return numbers.reduce(0, +)
}

private func parseInput(inputString: String) -> [Int] {
    let lookupValues = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").enumerated()
    let characters: [Character] = getTriplets(from: inputString)
    return characters.compactMap({ char in
        for (n, x) in lookupValues {
            if (char == x) {
                return n + 1
            }
        }
        fatalError()
    })
}

private func getTriplets(from inputString: String) -> [Character] {
    var strings: [String] = inputString.components(separatedBy: "\n")
    var chars: [Character] = []

    var index = 0

    while !strings[0].isEmpty {
        let group = [strings.removeFirst(), strings.removeFirst(), strings.removeFirst()]
        chars.append(compareThreeStrings(strings: group))
        index += GROUP_SIZE
    }

    return chars
}

private func compareThreeStrings(strings: [String]) -> Character {
    guard strings.count == GROUP_SIZE, !strings[0].isEmpty, !strings[1].isEmpty, !strings[2].isEmpty else {
        fatalError()
    }

    for char1 in Array(strings[0]) {
        for char2 in Array(strings[1]) {
            if char1 == char2{
                for char3 in Array(strings[2]) {
                    if char2 == char3 {
                        // print("\(strings) > \(char3)")
                        return char3
                    }
                }
            }
        }
    }

    fatalError()
}

private func getDuplicates(from inputString: String) -> [Character] {
    let chars: [Character] = inputString.components(separatedBy: "\n").compactMap { string in
        guard !string.isEmpty else {
            return nil
        }
        let subject: Character = {
            let array = Array(string)

            let length = array.count
            print(length)

            var index = 0
            while index < length/2 {
                var secondIndex = length/2
                while secondIndex < length {
                    if(array[index] == array[secondIndex]){
                        print(array[index])
                        return array[index]
                    }
                    secondIndex += 1
                }
                index += 1
            }
            fatalError()
        }()
        return subject
    }
    return chars
}
