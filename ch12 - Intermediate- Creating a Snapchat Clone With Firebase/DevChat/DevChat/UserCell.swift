//
//  UserCell.swift
//  DevChat
//
//  Created by jamesshih.ilink on 13/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var firstNameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setCheckmark(select: false)
    }

    func updataUI(user: User) {
        firstNameLbl.text = user.firstName
    }
    
    func setCheckmark(select: Bool) {
        let img = select ? #imageLiteral(resourceName: "messageindicatorchecked1") : #imageLiteral(resourceName: "messageindicator1")
        accessoryView = UIImageView(image: img)
    }
    
}
