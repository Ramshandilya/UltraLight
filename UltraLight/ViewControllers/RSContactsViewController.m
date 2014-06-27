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
#import "RSContactTableViewCell+Configure.h"
#import "RSBackendStore.h"

static NSString* const RSContactsTableViewCellIdentifier = @"ContactsTableViewCellIdentifier";

@interface RSContactsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *contactsTableView;
@property (nonatomic, strong) RSArrayDataSource *arrayDataSource;

@end

@implementation RSContactsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Contacts";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSArray *contacts = [RSBackendStore sharedStore].contacts;
    self.arrayDataSource = [[RSArrayDataSource alloc] initWithItems:contacts
                                                                   cellIdentifier:RSContactsTableViewCellIdentifier
                                                               configureCellBlock:^(RSContactTableViewCell *cell, RSContact *contact) {
                                                                   
                                                                   [cell configureCellForContact:contact];
                                                                   
                                                                   
    }];
    
    [self.contactsTableView registerNib:[UINib nibWithNibName:@"RSContactTableViewCell" bundle:nil] forCellReuseIdentifier:RSContactsTableViewCellIdentifier];
    [self.contactsTableView setDataSource:self.arrayDataSource];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
