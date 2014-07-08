//
//  Contact.swift
//  UltraLight
//
//  Created by Ramsundar Shandilya on 04/07/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

import Foundation
import UIKit

class Contact {
    
    let name: String
    let number: String
    let image: UIImage?
    
    init(name: String, number:String, image: UIImage?) {
        self.name = name;
        self.number = number;
        self.image = image;
    }
    
    
}