//
//  ContactsViewController.swift
//  UltraLight
//
//  Created by Ramsundar Shandilya on 04/07/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

import UIKit

let ContactsTableViewCellIdentifier = "ContactsTableViewCellIdentifier";

class ContactsViewController: UIViewController {

    @IBOutlet var contactsTableView: UITableView
    var arrayDataSource : ArrayDataSource?
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
        self.title = "Contacts"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let backend = BackendStore()
        let contacts = backend.contacts
        
        var configureCellBlock : TableViewConfigureBlock = {(cell: AnyObject?, contactInfo: AnyObject?) -> () in
            let tableViewCell = cell as ContactTableViewCell
            let contactDetails = contactInfo as Contact
            tableViewCell.setupCellForContact(contact: contactDetails)
        }
        
        arrayDataSource = ArrayDataSource(items: contacts, cellIdentifier: ContactsTableViewCellIdentifier, configureBlock: configureCellBlock)
        
        let cellNib = UINib(nibName: "ContactTableViewCell", bundle: nil)
        contactsTableView.registerNib(cellNib, forCellReuseIdentifier: ContactsTableViewCellIdentifier)
        contactsTableView.dataSource = arrayDataSource
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
