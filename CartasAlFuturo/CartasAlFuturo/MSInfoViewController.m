//
//  MSInfoViewController.m
//  CartasAlFuturo
//
//  Created by Marcos Sorribas Lopez on 31/10/14.
//  Copyright (c) 2014 MarcosSorribas. All rights reserved.
//

#import "MSInfoViewController.h"
#import "MSInfoTableViewManager.h"

@interface MSInfoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *infoBackgroundImage;
@property (weak, nonatomic) IBOutlet UITableView *infoTableView;

@property (strong,nonatomic) UIImage *screenshot;
@property (strong,nonatomic) MSInfoTableViewManager *infoTableViewManager;

@end

@implementation MSInfoViewController


- (instancetype)initWithBackgroundImage:(UIImage*)image
{
    self = [super init];
    if (self) {
        _screenshot = image;
        _infoTableViewManager = [[MSInfoTableViewManager alloc]init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.infoBackgroundImage.image = self.screenshot;
    [self.infoTableViewManager setInfoTableView:self.infoTableView];
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
