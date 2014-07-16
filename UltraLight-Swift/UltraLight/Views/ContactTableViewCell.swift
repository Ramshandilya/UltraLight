//
//  ContactTableViewCell.swift
//  UltraLight
//
//  Created by Ramsundar Shandilya on 04/07/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView
    @IBOutlet var nameLabel: UILabel
    @IBOutlet var numberLabel: UILabel
    @IBOutlet var callButton: UIButton
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func callButtonTapped(sender: UIButton) {
    }
}

extension ContactTableViewCell
{
    func setupCellForContact(contact contactInfo: Contact)
    {
        self.nameLabel.text = contactInfo.name
        self.numberLabel.text = contactInfo.number
        self.profileImageView.image = contactInfo.image
    }
}