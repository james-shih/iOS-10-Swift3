//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by jamesshih.ilink on 22/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

