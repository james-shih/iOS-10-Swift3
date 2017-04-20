//
//  CircleView.swift
//  devslopes-social
//
//  Created by jamesshih.ilink on 03/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

class CircleView: UIImageView {

    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
    
}
