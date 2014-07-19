//
//  MSPendingLetterDrawer.m
//  CartasAlFuturo
//
//  Created by Marcos Sorribas Lopez on 19/07/14.
//  Copyright (c) 2014 MarcosSorribas. All rights reserved.
//

#import "MSPendingLetterDrawer.h"
#import "Letter.h"
#import "MSPendingLetterTableViewCell.h"

@implementation MSPendingLetterDrawer

-(UITableViewCell *)cellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath{
    return [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MSPendingLetterTableViewCell class]) forIndexPath:indexPath];
}

-(void)drawCell:(MSPendingLetterTableViewCell *)cell withItem:(Letter*)item{
    
    cell.pendingLetterOpenDate.text = item.letterOpenDate.description;
    cell.pendingLetterTitle.text = item.letterTitle;

}

@end