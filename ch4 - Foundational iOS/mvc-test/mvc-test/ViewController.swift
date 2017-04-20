//
//  ViewController.swift
//  mvc-test
//
//  Created by jamesshih.ilink on 10/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var renameField: UITextField!
    
    let person = Person(first: "John", last: "Hancock")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
    }

    @IBAction func renamePress(_ sender: Any) {
        if let txt = renameField.text {
           person.firstName = txt
           fullName.text = person.fullName
        }
    }
}

