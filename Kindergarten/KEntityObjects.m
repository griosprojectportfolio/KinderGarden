//
//  KEntityObjects.m
//  Kindergarten
//
//  Created by GrepRuby on 12/01/15.
//  Copyright (c) 2015 GrepRuby. All rights reserved.
//

#import "KEntityObjects.h"

@implementation KEntityObjects

-(NSMutableArray *)entityAObjectData{
    
    imageA = [NSArray arrayWithObjects:@"Apple.png",@"airplane.png",@"ant.png", nil];
    animationImageA = [NSArray arrayWithObjects:@"1.png",@"2.png",@"3.png",@"4.png", nil];
    arrCharacter = [[NSArray alloc] initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",nil];
    self.alphabateObjects = [[NSMutableArray alloc] init];
    
    for (int i = 0 ; i < [arrCharacter count]; i ++) {
        
        NSMutableDictionary *entityObjectsA = [[NSMutableDictionary alloc]init];
        [entityObjectsA  setObject:[arrCharacter objectAtIndex:i] forKey:@"CharName"];
        [entityObjectsA setObject:imageA forKey:@"Images"];
        [entityObjectsA setObject:animationImageA forKey:@"animation"];
        [self.alphabateObjects addObject:entityObjectsA];
    }
    
    return self.alphabateObjects;
}

@end
