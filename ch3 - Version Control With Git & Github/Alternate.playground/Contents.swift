//: Playground - noun: a place where people can play

import UIKit

var arr1 = ["a", "b", "c"]
var arr2 = ["bo", "ro", "me"]

func mixArray(array1: [String], array2: [String]) -> [String] {
    
    var mixArr = [String]()
    var mixCount = 0
    
    //mixCount
    if arr1.count >= arr2.count {
        mixCount = arr1.count
    } else {
        mixCount = arr2.count
    }
    
    //append
    for i in 0..<mixCount {
        
        if array1.count > i {
            mixArr.append(array1[i])
        }
        
        if array2.count > i {
            mixArr.append(array2[i])
        }
    }
    
    return mixArr
}

print(mixArray(array1: arr1, array2: arr2))



