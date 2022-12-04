import UIKit
import Foundation


// Day 1

let output1 = day1(
    inputString: try String(
        contentsOfFile:  Bundle.main.path(forResource: "input/day1", ofType: "txt")!,
        encoding: String.Encoding.utf8
    )
)

print("day1: \(output1)")

// Day 2

let output2 = day2(
    inputString: try String(
        contentsOfFile:  Bundle.main.path(forResource: "input/day2", ofType: "txt")!,
        encoding: String.Encoding.utf8
    )
)

print("day2: \(output2)")

// Day 3

let output3 = day3(
    inputString: try String(
        contentsOfFile:  Bundle.main.path(forResource: "input/day3", ofType: "txt")!,
        encoding: String.Encoding.utf8
    )
)

print("day3: \(output3)")

// Day 4

let output4 = day4(
    inputString: try String(
        contentsOfFile:  Bundle.main.path(forResource: "input/day4", ofType: "txt")!,
        encoding: String.Encoding.utf8
    )
)

print("day4: \(output4)")
