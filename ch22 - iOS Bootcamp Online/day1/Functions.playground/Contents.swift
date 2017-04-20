//: Playground - noun: a place where people can play

import UIKit

//2
func sum(num1: Double, num2: Double) -> Double {
    return num1 + num2
}

//3
func substact(num1: Int, num2: Int) -> Int {
    if num1 > num2 {
        return num1 - num2
    } else {
        return num2 - num1
    }
}

//4
func multiply(num1: Float, num2: Float) -> Float {
    return num1 * num2
}

//5
func divide(num1: Double, num2: Double) -> Double {
    return num1 / num2
}

sum(num1: 15.0, num2: 5.0)
substact(num1: 15, num2: 5)
multiply(num1: 15.0, num2: 15.0)
divide(num1: 15.0, num2: 3.0)

