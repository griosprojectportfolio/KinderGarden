//
//  UIFont+TextFont.m
//  Boof
//
//  Created by GrepRuby on 18/09/14.
//  Copyright (c) 2014 GrepRuby. All rights reserved.
//

#import "UIFont+TextFont.h"

@implementation UIFont (TextFont)

#pragma mark - HelveticaNeue Font

+(UIFont*)appCharacterFont130{
    return [UIFont fontWithName:@"HelveticaNeue" size:100.0];
}

+(UIFont*)appCharacterFont40{
  return [UIFont fontWithName:@"HelveticaNeue" size:40];
}

#pragma mark - SnellRoundhand Font

+(UIFont*)appCursiveCharecterFont40{
  return [UIFont fontWithName:@"Ecolier" size:80];
}

+(UIFont*)appCursiveCharecterFont130{
  return [UIFont fontWithName:@"Ecolier" size:100.0];
}

#pragma mark - Score Board Font

+(UIFont*)appDottedFontWithSize_150{
  return [UIFont fontWithName:@"HelveticaNeue" size:150];
}

+(UIFont*)appDottedCursivFontWithSize_150{
  return [UIFont fontWithName:@"Ecolier" size:150];
}

+(UIFont*)appCursiveCharecter40{
  return [UIFont fontWithName:@"Ecolier" size:40];
}


+(UIFont*)boofAppNormalTittlelFont22{
  return [UIFont systemFontOfSize:22.0];
}

@end
