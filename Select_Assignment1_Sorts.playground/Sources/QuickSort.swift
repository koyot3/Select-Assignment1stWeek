import Foundation

public func quickSort(list: [Int]) -> [Int] {
    guard list.count > 0 else { return list }
    var result:[Int] = list
    preformQuickSort(&result, low: 0, high: result.count - 1)
    return result
}

// Comparable: key https://developer.apple.com/library/watchos/documentation/Swift/Reference/Swift_Comparable_Protocol/index.html
// swap https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html
public func sort<T: Comparable>(inout result: [T], low: Int, high: Int) -> Int {
    let pivot = result[low]
    var i = low - 1
    var j = high + 1
    while true {
        repeat { j -= 1 }
            while result[j] > pivot
        repeat { i += 1 }
            while result[i] < pivot
        if i < j {
            swap(&result[i], &result[j])
        } else {
            return j
        }
    }
}

func preformQuickSort<T: Comparable>(inout array: [T], low: Int, high: Int) {
    if low < high {
        let p = sort(&array, low: low, high: high)
        preformQuickSort(&array, low: low, high: p)
        preformQuickSort(&array, low: p + 1, high: high)
    }
}