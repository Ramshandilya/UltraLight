//
//  RSArrayDataSource.h
//  UltraLight
//
//  Created by Ramsundar Shandilya on 27/06/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RSTableViewCellConfigureBlock)(id cell, id itemData);

@interface RSArrayDataSource : NSObject <UITableViewDataSource>

- (instancetype)initWithItems:(NSArray *)items
               cellIdentifier:(NSString *)cellIdentifier
           configureCellBlock:(RSTableViewCellConfigureBlock)configureBlock;

- (id)itemAtIndex:(NSUInteger)index;

@end
