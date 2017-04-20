//: Playground - noun: a place where people can play

import UIKit

//1
var arr = [String]()
//2
var arr2: Array<Double> = [1.2, 2.3, 3.4, 4.5]
//3
var arr3: Array<Any> = ["hello", 1, Float(1.3), Double(3), "world"]
//4
arr.append("s")
arr.append("a")
arr.append("y")

arr2.append(5.6)
arr2.append(4.3)
arr2.append(4.5)

arr3.append("1")
arr3.append(1)
arr3.append(5)

//5
arr.remove(at: 0)
arr2.remove(at: 1)
arr3.remove(at: 3)

//6
arr.removeAll()

//7
var arr4 = [3, 45, 1, 32, 99]
arr4.sort()
arr4.count
arr4.endIndex

