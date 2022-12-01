import Foundation

public func day1(inputString: String) -> Int {
    let numbers = inputString.components(separatedBy: "\n\n").compactMap {
        String($0).components(separatedBy: "\n").compactMap{ Int($0) }.reduce(0, { x, y in
            x + y
        })
    }

    return numbers.max()!
}
