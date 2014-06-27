//
//  RSArrayDataSource.m
//  UltraLight
//
//  Created by Ramsundar Shandilya on 27/06/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

#import "RSArrayDataSource.h"

@interface RSArrayDataSource()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) RSTableViewCellConfigureBlock configureCellBlock;

@end

@implementation RSArrayDataSource

- (instancetype)initWithItems:(NSArray *)items cellIdentifier:(NSString *)cellIdentifier configureCellBlock:(RSTableViewCellConfigureBlock)configureBlock
{
    if (self = [super init]) {
        
        _items = items;
        _cellIdentifier = cellIdentifier;
        _configureCellBlock = configureBlock;
    }
    
    return self;
}

- (id)itemAtIndex:(NSUInteger)index
{
    return [self.items objectAtIndex:index];
}

#pragma mark - UITableViewDataSource method

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                                            forIndexPath:indexPath];
    id item = [self itemAtIndex:indexPath.row];
    self.configureCellBlock(cell, item);
    return cell;
}


@end
