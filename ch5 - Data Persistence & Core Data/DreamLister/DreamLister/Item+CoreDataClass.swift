//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by jamesshih.ilink on 13/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        
        self.created = NSDate()
        
    }
}
