//
//  Letter+myAPI.h
//  CartasAlFuturo
//
//  Created by Marcos Sorribas Lopez on 14/07/14.
//  Copyright (c) 2014 MarcosSorribas. All rights reserved.
//

#import "Letter.h"

enum {
    MSPending = 0,
    MSReadyToOpen = 1,
    MSRead = 2,
};
typedef NSInteger MSStatusLetter;

@interface Letter (myAPI)

NSString extern *const letterEntityName;

+(Letter*)createLetterInContext:(NSManagedObjectContext*)context;
+(NSFetchedResultsController*)pendingLettersToShowInContext:(NSManagedObjectContext *)context;
+(NSFetchedResultsController*)openedLettersToShowInContext:(NSManagedObjectContext *) context;
+(NSArray*)checkReadyToOpenLettersInContext:(NSManagedObjectContext *) context;
@end
