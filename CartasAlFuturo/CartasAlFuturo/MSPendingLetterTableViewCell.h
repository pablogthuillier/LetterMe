//
//  MSPendingLetterTableViewCell.h
//  CartasAlFuturo
//
//  Created by Marcos Sorribas Lopez on 14/07/14.
//  Copyright (c) 2014 MarcosSorribas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Letter.h"
@interface MSPendingLetterTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *pendingLetterOpenDate;
@property (weak, nonatomic) IBOutlet UILabel *pendingLetterTitle;
@end
