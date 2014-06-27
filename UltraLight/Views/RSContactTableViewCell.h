//
//  RSContactTableViewCell.h
//  UltraLight
//
//  Created by Ramsundar Shandilya on 27/06/14.
//  Copyright (c) 2014 Ramsundar Shandilya. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RSContactTableViewCellDelegate <NSObject>

- (void)contactTableViewCellDidTapCall;

@end

@interface RSContactTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *contactImageView;
@property (weak, nonatomic) IBOutlet UILabel *contactNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *contactNumberLabel;

@property (nonatomic, weak) id <RSContactTableViewCellDelegate> delegate;

@end
