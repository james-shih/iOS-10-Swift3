//
//  ViewController.swift
//  LoanCalculator
//
//  Created by jamesshih.ilink on 16/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var termField: UITextField!
    @IBOutlet weak var interestField: UITextField!
    @IBOutlet weak var paymentLbl: UILabel!
    
//    var amount: Double!
//    var term: Double!
//    var interest: Double!
//    var payment: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculateBtnPressed(_ sender: Any) {
        let amount = Double(amountField.text!)!
        let term = Double(termField.text!)!
        let interest = Double(interestField.text!)!
        
        let pay = calculateLoan(amount: amount, year: term, rate: interest)
        paymentLbl.text = String(format: "%.2f", pay)
    }
    
    func calculateLoan(amount: Double, year: Double, rate: Double) -> Double {
        
        let term = Int(year) * 12
        let r = 1 + (rate * 0.01)
        
        var rn: Double!
        var loan: Double!
        
        for _ in 0..<term {
            rn = r * r
        }
        
        loan = amount * rn / Double(term)
        return loan
    }
    
}








