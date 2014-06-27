//
//  RSBackendStore.m
//  UltraLight
//
//  Created by Ramsundar Shandilya on 27/06/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

#import "RSBackendStore.h"
#import "RSContact.h"

@interface RSBackendStore()

@property (nonatomic, strong) NSMutableArray *contactsArray;

@end

@implementation RSBackendStore

+ (instancetype)sharedStore
{
    static RSBackendStore *sharedStore = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedStore = [[RSBackendStore alloc] init];
    });
    
    return sharedStore;
}

- (id)init
{
    if (self = [super init]) {
        [self loadData];
    }
    return self;
}

- (void)loadData
{
    _contactsArray = [[NSMutableArray alloc] init];
    
    NSArray *names = @[@"Orange", @"Pineapple", @"Mango", @"Avocado"];
    NSArray *images = @[[UIImage imageNamed:@"hipster.jpg"], [UIImage imageNamed:@"lego.jpg"], [UIImage imageNamed:@"ric.jpg"], [UIImage imageNamed:@"hair.jpg"]];
    NSArray *numbers = @[@"9863653345", @"9884623456", @"9600182834", @"8945403965"];
    
    for (int i = 0; i<4; i++) {
        RSContact *contact = [[RSContact alloc] init];
        contact.name = names[i];
        contact.number = numbers[i];
        contact.image = images[i];
        
        [_contactsArray addObject:contact];
    }
}

- (NSArray *)contacts
{
    return [NSArray arrayWithArray:self.contactsArray];
}

@end
