//: Playground - noun: a place where people can play

import UIKit

var nameOfIntegers = [Int: String]()

nameOfIntegers[3] = "three"
nameOfIntegers[44] = "forty four"

nameOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto Person", "LAX": "Los Angles International"]

print("The airports dictionary has: \(airports.count) items")

if airports.isEmpty {
    print("The airports dictionary is empty!")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["DEV"] = "Devslopes International"

airports["DEV"] = nil

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for key in airports.keys {
    print("Key: \(key)")
}

for val in airports.values {
    print("Value: \(val)")
}

