//
//  RSContactTableViewCell+Configure.m
//  UltraLight
//
//  Created by Ramsundar Shandilya on 27/06/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

#import "RSContactTableViewCell+Configure.h"

@implementation RSContactTableViewCell (Configure)

- (void)configureCellForContact:(RSContact *)contact
{
    self.contactNameLabel.text = contact.name;
    self.contactNumberLabel.text = contact.number;
    self.contactImageView.image = contact.image;
}

@end
