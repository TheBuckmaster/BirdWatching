//
//  BirdSightingDataController.m
//  BirdWatching
//
//  Created by BENJAMIN BUCKMASTER on 1/24/13.
//  Copyright (c) 2013 BENJAMIN BUCKMASTER. All rights reserved.
//

#import "BirdSightingDataController.h"
#import "BirdSighting.h"
@interface BirdSightingDataController ()

- (void)initializeDefaultDataList;

@end

@implementation BirdSightingDataController

- (id)init {
    
    if (self = [super init]) {
        
        [self initializeDefaultDataList];
        
        return self;
        
    }
    
    return nil;
    
}

- (void)initializeDefaultDataList {
    
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    
    self.masterBirdSightingList = sightingList;
    
    BirdSighting *sighting;
    
    NSDate *today = [NSDate date];
    
    sighting = [[BirdSighting alloc] initWithName:@"Pigeon" location:@"Everywhere" date:today];
    
    [self addBirdSightingWithSighting:sighting];
    
}

- (void)setMasterBirdSightingList:(NSMutableArray *)newList {
    
    if (_masterBirdSightingList != newList) {
        
        _masterBirdSightingList = [newList mutableCopy];
        
    }
    
}

- (void)addBirdSightingWithSighting:(BirdSighting *)sighting {
    
    [self.masterBirdSightingList addObject:sighting];
    
}

- (NSUInteger)countOfList {
    
    return [self.masterBirdSightingList count];
    
}

- (BirdSighting *)objectInListAtIndex:(NSUInteger)theIndex {
    
    return [self.masterBirdSightingList objectAtIndex:theIndex];
    
}

@end
