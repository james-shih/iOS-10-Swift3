//: Playground - noun: a place where people can play

import UIKit

pow(2, 10)
pow(5, 5)
pow(1024, 0.2)
sqrt(9)

func calculateLoan(amount: Double, year: Double, rate: Double) -> Double {
    
    let term = Int(year) * 12
    let r = 1 + rate
    
    var rn: Double!
    var loan: Double!
    
    for _ in 0..<term {
        rn = r * r
    }
    
    loan = amount * rn / Double(term)
    return loan
}

calculateLoan(amount: 5000.0, year: 5.0, rate: 0.045)

