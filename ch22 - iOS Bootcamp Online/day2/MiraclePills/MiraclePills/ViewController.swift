//
//  ViewController.swift
//  MiraclePills
//
//  Created by jamesshih.ilink on 16/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameLbl: UITextField!
    @IBOutlet weak var addressLbl: UITextField!
    @IBOutlet weak var cityLbl: UITextField!
    @IBOutlet weak var stateLbl: UITextField!
    @IBOutlet weak var zipLbl: UITextField!
    
    @IBOutlet weak var sucessView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sucessView.isHidden = true
    }

    @IBAction func buyBtnPressed(_ sender: Any) {
        checkUserInput()
    }

    func checkUserInput() {
        if fullNameLbl.text == "" {
            return
        }
        
        if addressLbl.text == "" {
            return
        }
        
        if cityLbl.text == "" {
            return
        }
        
        if stateLbl.text == "" {
            return
        }
        
        if zipLbl.text == "" {
            return
        }

        sucessView.isHidden = false
    }
    
}






