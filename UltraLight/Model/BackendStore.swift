//
//  BackendStore.swift
//  UltraLight
//
//  Created by Ramsundar Shandilya on 04/07/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

import Foundation
import UIKit

class BackendStore {
    
    var contacts: Array<Contact> = Array()
    
    init()
    {
        loadData()
    }
    
    func loadData()
    {
        let names = ["Orange", "Pineapple", "Mango", "Avocado"]
        let images = [UIImage(named: "Hipster.jpg"), UIImage(named: "lego.jpg"), UIImage(named: "ric.jpg"), UIImage(named: "hair.jpg")]
        let numbers = ["9863653345", "9884623456", "9600182834", "8945403965"]
        
        for index in 0..4 {
            var contactInfo = Contact(name: names[index], number: numbers[index], image: images[index])
            contacts.append(contactInfo)
            println("Contacts : \(contacts)")
        }
    }
}