//
//  UIColor+Color.h
//  Boof
//
//  Created by GrepRuby on 18/09/14.
//  Copyright (c) 2014 GrepRuby. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Color)
+ (UIColor *) colorFromHex:(NSString *)hex;
+ (UIColor *) colorFromHex:(NSString *)hex withAlpha:(float)alpha;
  // Navigation Bar color
+(UIColor*)boofAppNavigationBarColor;
  // Search page colors
+(UIColor*)boofAppLightGrayLineColor;
+(UIColor*)boofAppSearchTitleColor;
+(UIColor*)boofAppGreenLineColor;
+(UIColor*)boofAppSchoolNameTextColor;
+(UIColor*)boofAppRedLineColor;
  // Member page colors
+(UIColor*)boofAppMemberImageBGColor;
+(UIColor*)boofAppMemberImageBorderColor;

@end
