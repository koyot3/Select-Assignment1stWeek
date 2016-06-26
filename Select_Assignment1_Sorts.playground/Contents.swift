//: Playground - noun: a place where people can play

import UIKit

typealias SortMethod = ([Int]) -> [Int]

public class SortTestCase : XCTestCase {
    
    var sortMethod: SortMethod!
    
    init(method: SortMethod) {
        self.sortMethod = method
        super.init()
    }
    
    func testEmptyArray() {
        let list: [Int] = []
        XCTAssertEqual(sortMethod(list), [])
    }
    
    func testOneElementArray() {
        let list = [1]
        XCTAssertEqual(sortMethod(list), [1])
    }
    
    func testSortedList() {
        let list = [1,2,3]
        XCTAssertEqual(sortMethod(list), [1,2,3])
    }
    
    func testUnsortedList() {
        let list = [3, 2, 1]
        XCTAssertEqual(sortMethod(list), [1, 2, 3])
    }
}

public class MergeBetterThanQuickCase : XCTestCase {
    
    var sortMethod: SortMethod!
    
    init(method: SortMethod) {
        self.sortMethod = method
        super.init()
    }
    
    func test() {
        let list: [Int] = [ 8, 0, 3, 9, 2, 14, 10, 27, 1, 5, 8, -1, 26 ]
        XCTAssertEqual(sortMethod(list), [-1, 0, 1, 2, 3, 5, 8, 8, 9, 10, 14, 26, 27])
    }
}

public class QuickBetterThanMergeCase : XCTestCase {
    
    var sortMethod: SortMethod!
    
    init(method: SortMethod) {
        self.sortMethod = method
        super.init()
    }
    
    func test() {
        let list: [Int] = [ 8, 0, 3, 9, 2, 14, 10, 27, 1, 5, 8, -1, 26 ]
        XCTAssertEqual(sortMethod(list), [-1, 0, 1, 2, 3, 5, 8, 8, 9, 10, 14, 26, 27])
    }
}

// 1.
//SortTestCase(method: bogoSort)
//SortTestCase(method: selectSort)
//SortTestCase(method: quickSort)
//SortTestCase(method: mergeSort)

// 2. Quick sort > Merge sort
//MergeBetterThanQuickCase(method: quickSort)
//MergeBetterThanQuickCase(method: mergeSort)

// 3. Merge sort > Quick sort
//QuickBetterThanMergeCase(method:quickSort)
//QuickBetterThanMergeCase(method:mergeSort)
