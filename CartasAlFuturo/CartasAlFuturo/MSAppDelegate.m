//
//  MSAppDelegate.m
//  CartasAlFuturo
//
//  Created by Marcos Sorribas Lopez on 14/07/14.
//  Copyright (c) 2014 MarcosSorribas. All rights reserved.
//

#import "MSAppDelegate.h"
#import "MSPendingTableViewController.h"

@interface MSAppDelegate ()
@property (nonatomic,strong,readwrite) UIManagedDocument *managedDocument;
@end

@implementation MSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self prepareFirstController];
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark -
#pragma mark - Controllers methods

-(void)prepareFirstController{
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    MSPendingTableViewController *pendingTableView = (MSPendingTableViewController *)navigationController.topViewController;
    pendingTableView.manageDocument = self.managedDocument;
    
    
    
    
    //    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main_iphone" bundle:nil];
    //    MSPendingTableViewController *pendingTableView = (MSPendingTableViewController*) [[mainStoryBoard instantiateViewControllerWithIdentifier:@"PendingController"] visibleViewController];
    //    pendingTableView.manageDocument = self.managedDocument;
}

#pragma mark -
#pragma mark - Core Data stack

- (UIManagedDocument *)managedDocument {
    if (_managedDocument == nil) {
        NSURL *myModelURL = [[self getDocumentsDirectory] URLByAppendingPathComponent:@"Model.model"];
        _managedDocument = [[UIManagedDocument alloc] initWithFileURL:myModelURL];
        if ([[NSFileManager defaultManager] fileExistsAtPath:[myModelURL path]]) {
            [_managedDocument openWithCompletionHandler:^(BOOL success) {
                if (!success) {
                    //ERROR
                }
            }];
        } else {
            [_managedDocument saveToURL:myModelURL forSaveOperation:UIDocumentSaveForCreating completionHandler:^(BOOL success) {
                if (!success) {
                    //ERROR
                }
            }];
        }
    }
    return _managedDocument;
}

-(NSURL*)getDocumentsDirectory{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}


@end
