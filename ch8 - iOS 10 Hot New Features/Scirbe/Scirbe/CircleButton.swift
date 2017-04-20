//
//  CircleButton.swift
//  Scirbe
//
//  Created by jamesshih.ilink on 23/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        didSet {
            setupView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = cornerRadius
    }
    
}
