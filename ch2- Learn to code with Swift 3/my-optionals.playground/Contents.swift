//: Playground - noun: a place where people can play

import UIKit


var lotteryWinning: Int?

if lotteryWinning != nil {
    print(lotteryWinning!)
}

lotteryWinning = 100

if let winnings = lotteryWinning {
    print(winnings)
}

//-----------------------------------

class Car {
    var model: String?
}

var vehicle: Car?

//if let v = vehicle {
//    if m = v.model {
//        print(m)
//    }
//}

print(vehicle?.model)

vehicle = Car()
vehicle?.model = "Brono"

if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?
cars = [Car]()

if let carArr = cars, carArr.count > 0 {
    //only execute if not nil and if more than 0 elements
} else {
    cars?.append(Car())
    print(cars?.count)
}

//----------------------------------------

class Person {
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
           _age = 15
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()
//print(jack._age)
print(jack.age)

//---------------------------------------

class Dog {
    var sepecies: String
    
    init(someSepecies: String) {
        self.sepecies = someSepecies
    }
}

var lab = Dog(someSepecies: "Black Lab")
print(lab.sepecies)


