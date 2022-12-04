import Foundation

public func day3(inputString: String) -> Int {
    let numbers = parseInput(inputString: inputString)
    return numbers.reduce(0, +)
}

private func parseInput(inputString: String) -> [Int] {
    let lookupValues = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").enumerated()
    let characters: [Character] = getDuplicates(from: inputString)
    return characters.compactMap({ char in
        for (n, x) in lookupValues {
            if (char == x) {
                return n + 1
            }
        }
        fatalError()
    })
}

private func getTriplets(from string: String) -> Character {
    return "f"
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
