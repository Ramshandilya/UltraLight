//
//  RSBackendStore.h
//  UltraLight
//
//  Created by Ramsundar Shandilya on 27/06/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSBackendStore : NSObject

+ (instancetype)sharedStore;

@property (nonatomic, strong) NSArray *contacts;

@end
