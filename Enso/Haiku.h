//
//  Haiku.h
//  Enso
//
//  Created by Leonardo Lee on 9/5/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Haiku : NSManagedObject

@property (nonatomic, retain) NSString * haiku;
@property (nonatomic, retain) id image;
@property (nonatomic, retain) NSNumber * syllables;

@end
