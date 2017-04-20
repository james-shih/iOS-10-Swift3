//
//  RoundedImageView.swift
//  mvc-test
//
//  Created by jamesshih.ilink on 10/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
