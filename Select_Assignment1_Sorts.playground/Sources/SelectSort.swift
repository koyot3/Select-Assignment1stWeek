import Foundation

// swap https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html
public func selectSort(list: [Int]) -> [Int] {
    guard list.count > 1 else { return list }
    var result:[Int] = []
    result = list
    var min:Int = 0;
    for i in 0..<list.count {
        min = i
        for j in i+1..<list.count {
            if result[j] < result[i] {
                min = j
            }
        }
        swap(&result[i], &result[min])
    }
    return result
}

