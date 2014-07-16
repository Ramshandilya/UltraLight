//
//  ArrayDataSource.swift
//  UltraLight
//
//  Created by Ramsundar Shandilya on 04/07/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

import Foundation
import UIKit

typealias TableViewConfigureBlock = (AnyObject?, AnyObject?) -> ()

class ArrayDataSource: NSObject, UITableViewDataSource{
    
    let items: AnyObject[]
    let cellIdentifier: String
    let configureBlock: TableViewConfigureBlock
    
    init(items: AnyObject[], cellIdentifier: String, configureBlock: TableViewConfigureBlock) {
        self.items = items
        self.cellIdentifier = cellIdentifier
        self.configureBlock = configureBlock
    }
    
// MARK: UITableViewDataSource methods
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell: UITableViewCell! = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        
        var item : AnyObject = items[indexPath.row]
        configureBlock(cell, item)
        
        return cell
    }
}