import Foundation

private let IDENTIFIER_LENGTH = 14

public func day6(inputString: String) -> Int {
    return getIndex(from: inputString)
}

private func getIndex(from signalString: String) -> Int {
    // print(signalString)

    var index = 1
    var charArray = Array(signalString).dropLast()
    var flagString: [Character] = []

    while charArray.count > IDENTIFIER_LENGTH {
        let char = charArray.removeFirst()

        if flagString.contains(char) {
            while (flagString.removeFirst() != char) { }
            flagString.append(char)
        }
        else {
            flagString.append(char)
            if(flagString.count == IDENTIFIER_LENGTH) {
                // print("FLAG AT : \(index)")
                // print(flagString)
                return index
            }
        }

         // print(flagString)

        index += 1
    }

    return index
}
