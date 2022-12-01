import Foundation

public func day1(maxCaloriesCarriedByElf: String) -> Int {
    let numbers = maxCaloriesCarriedByElf.componentsSeparatedByString("/n")
    print numbers[0]
    return numbers.count
}
