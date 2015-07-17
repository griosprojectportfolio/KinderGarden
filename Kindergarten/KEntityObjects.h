//
//  KEntityObjects.h
//  Kindergarten
//
//  Created by GrepRuby on 12/01/15.
//  Copyright (c) 2015 GrepRuby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KEntityObjects : NSObject
{
  NSArray *imageA;
  NSArray *animationImageA;
  NSArray *arrCharacter;
}

@property(retain,nonatomic) NSMutableArray *alphabateObjects;
-(NSMutableArray *)entityAObjectData;
@end
