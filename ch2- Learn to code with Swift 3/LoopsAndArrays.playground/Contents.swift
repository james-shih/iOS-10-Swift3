//: Playground - noun: a place where people can play

import UIKit

//Exercise Arrays
//1
var arr1 = [String]()
//2
var arr2: [Double] = [1.11, 2.22, 3.33, 4.44]
//3
var arr3: [Int] = [1, 2, 3, 4, 5]
//4
arr1.append("a")
arr1.append("b")
arr1.append("c")

arr2.append(2.33)
arr2.append(543.1)
arr2.append(8.321)

arr3.append(46)
arr3.append(73)
arr3.append(99)

//5
arr1.remove(at: 0)
arr2.remove(at: 1)
arr3.remove(at: 2)

//6
arr1.removeAll()
arr2.removeAll()
arr3.removeAll()

//7
arr1 = ["b", "a", "d", "c"]
arr1.sorted()


//Exercise Loops
//1
var oddNumbers = [Int]()
//2
for x in 0...100 {
    if x % 2 == 1 {
        oddNumbers.append(x)
    }
}
//3
var sums = [Int]()
//4
for y in oddNumbers {
    var x = y + 5
    sums.append(x)
}
//5
var z = 0
repeat {
    print("z:\(z)")
    z += 1
} while (z == 100)




		