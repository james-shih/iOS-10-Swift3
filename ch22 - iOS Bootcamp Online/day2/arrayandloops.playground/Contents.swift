//: Playground - noun: a place where people can play

import UIKit

var oddNumber = [Int]()

for x in 0...100 {
    if x % 2 == 1 {
        oddNumber.append(x)
    }
}

var sum = [Int]()

for i in oddNumber {
    var x = i + 5
    sum.append(x)
}

var z = 0
repeat {
    print("z: \(z)")
    z += 1
} while (z == 15)

