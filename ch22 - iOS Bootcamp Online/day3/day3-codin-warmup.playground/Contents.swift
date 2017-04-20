//: Playground - noun: a place where people can play

import UIKit

for i in 1...200 {
    
    if i % 3 == 0 && i % 5 == 0 {
        print("i:\(i) BooYa")
    }
    
    if i % 3 == 0 {
        print("i:\(i) Boo")
    } else if i % 5 == 0 {
        print("i:\(i) Ya")
    }
}
