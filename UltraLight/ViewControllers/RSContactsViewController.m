//
//  RSContactsViewController.m
//  UltraLight
//
//  Created by Ramsundar Shandilya on 27/06/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

#import "RSContactsViewController.h"
#import "RSArrayDataSource.h"
#import "RSContactTableViewCell.h"
#import "RSContact.h"

static NSString* const RSContactsTableViewCellIdentifier = @"ContactsTableViewCellIdentifier";

@interface RSContactsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *contactsTableView;

@end

@implementation RSContactsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    RSArrayDataSource *arrayDataSource = [[RSArrayDataSource alloc] initWithItems:nil
                                                                   cellIdentifier:RSContactsTableViewCellIdentifier
                                                               configureCellBlock:^(RSContactTableViewCell *cell, RSContact *contact) {
                                                                   
                                                                   cell.contactNameLabel.text = contact.name;
                                                                   cell.contactNumberLabel.text = contact.number;
                                                                   cell.contactImageView.image = contact.image;
                                                                   
    }];
    
    [self.contactsTableView registerNib:[UINib nibWithNibName:@"RSContactTableViewCell" bundle:nil] forCellReuseIdentifier:RSContactsTableViewCellIdentifier];
    [self.contactsTableView setDataSource:arrayDataSource];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
