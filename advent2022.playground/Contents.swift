import UIKit
import Foundation


// Day 1

let output1 = day1(
    inputString: try String(
        contentsOfFile:  Bundle.main.path(forResource: "input/day1", ofType: "txt")!,
        encoding: String.Encoding.utf8
    )
)

print(output1)
