//
//  DropShadow.swift
//  TacoPOP
//
//  Created by jamesshih.ilink on 21/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        //implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}

