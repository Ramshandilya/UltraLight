//
//  KVObserver.swift
//  UltraLight
//
//  Created by Ramsundar Shandilya on 15/07/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

import Foundation

class KVObserver{
    
    var sourceObject: AnyObject?
    var targetObject: AnyObject?
    
    var sourceKeyPath: String?
    var targetKeyPath: String?
    
    init() {
        self.updateValue()
        //KVO here
    }
    
    
    func updateValue(){
        var value: AnyObject? = sourceObject?.valueForKeyPath(sourceKeyPath)
        
        if let targetKey = targetKeyPath {
        
            targetObject?.setValue(value, forKeyPath: targetKeyPath)
            
        }
    }
    
}