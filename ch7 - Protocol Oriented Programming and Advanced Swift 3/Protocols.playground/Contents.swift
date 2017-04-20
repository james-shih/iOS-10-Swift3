//: Playground - noun: a place where people can play

import UIKit

protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool {get set}
    var make: String { get set}
    var model: String {get set}
    mutating func start()
    mutating func turnOff()
}

extension Double {
    var dollarString: String {
        return String(format: "$%.02f", self)
    }
}

var pct = 32.15 * 0.15
pct.dollarString

extension Vehicle {
    var makeModel: String {
        return "\(make) \(model)"
    }
    
    mutating func start() {
        if isRunning {
            print("Already started")
        } else {
            isRunning = true
            print("\(self.description) fired up!")
        }
    }
    
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("\(self.description) shut down!")
        } else {
            print("Already dead!")
        }
    }
}

struct SportCar: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    
    var description: String {
        return self.makeModel
    }
}

class SemiTrunk: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    
    var description: String {
        return self.makeModel
    }
    
    func blowAirHorn() {
        print("TOOOOOOT :)")
    }
}

var car1 = SportCar(isRunning: false, make: "Porsche", model: "911")
var trunk1 = SemiTrunk(isRunning: false, make: "Peterbuilt", model: "Verago")

car1.start()
trunk1.start()
trunk1.blowAirHorn()

trunk1.turnOff()

var vehicleArray: Array<Vehicle> = [car1, trunk1]
for vehicle in vehicleArray {
    print("\(vehicle.makeModel)")
}




