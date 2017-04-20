//
//  MessageCell.swift
//  firebase-sort-data
//
//  Created by jamesshih.ilink on 24/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var msgTextLabel: UILabel!
    
    var msg: Message!
    
    func configureCell(msg: Message) {
        self.msg = msg
        self.msgTextLabel.text = msg.msgText
    }

}
