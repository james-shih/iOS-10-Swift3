//
//  ReusebleView.swift
//  TacoPOP
//
//  Created by jamesshih.ilink on 22/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
