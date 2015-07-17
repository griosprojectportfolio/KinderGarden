//
//  UIColor+Color.m
//  Boof
//
//  Created by GrepRuby on 18/09/14.
//  Copyright (c) 2014 GrepRuby. All rights reserved.
//

#import "UIColor+Color.h"

@implementation UIColor (Color)
+ (UIColor *) colorFromHex:(NSString *)hex {

  NSString *colorString = [[hex uppercaseString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] ;
  if ([colorString length] < 6)
    return [UIColor grayColor];

  if ([colorString hasPrefix:@"0X"])
    colorString = [colorString substringFromIndex:2];
  else if ([colorString hasPrefix:@"#"])
    colorString = [colorString substringFromIndex:1];
  else if ([colorString length] != 6)
    return  [UIColor grayColor];

  NSRange range;
  range.location = 0;
  range.length = 2;
  NSString *rString = [colorString substringWithRange:range];
  range.location += 2;
  NSString *gString = [colorString substringWithRange:range];
  range.location += 2;
  NSString *bString = [colorString substringWithRange:range];

  unsigned int red, green, blue;
  [[NSScanner scannerWithString:rString] scanHexInt:&red];
  [[NSScanner scannerWithString:gString] scanHexInt:&green];
  [[NSScanner scannerWithString:bString] scanHexInt:&blue];

  return [UIColor colorWithRed:((float) red / 255.0f)
                         green:((float) green / 255.0f)
                          blue:((float) blue / 255.0f)
                         alpha:1.0f];
}

+ (UIColor *) colorFromHex:(NSString *)hex withAlpha:(float)alpha{

  NSString *colorString = [[hex uppercaseString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] ;
  if ([colorString length] < 6)
    return [UIColor grayColor];

  if ([colorString hasPrefix:@"0X"])
    colorString = [colorString substringFromIndex:2];
  else if ([colorString hasPrefix:@"#"])
    colorString = [colorString substringFromIndex:1];
  else if ([colorString length] != 6)
    return  [UIColor grayColor];

  NSRange range;
  range.location = 0;
  range.length = 2;
  NSString *rString = [colorString substringWithRange:range];
  range.location += 2;
  NSString *gString = [colorString substringWithRange:range];
  range.location += 2;
  NSString *bString = [colorString substringWithRange:range];

  unsigned int red, green, blue;
  [[NSScanner scannerWithString:rString] scanHexInt:&red];
  [[NSScanner scannerWithString:gString] scanHexInt:&green];
  [[NSScanner scannerWithString:bString] scanHexInt:&blue];

  return [UIColor colorWithRed:((float) red / 255.0f)
                         green:((float) green / 255.0f)
                          blue:((float) blue / 255.0f)
                         alpha:alpha];
  
}

#pragma mark Navigation Bar Color

+(UIColor*)boofAppNavigationBarColor {
  return [self colorFromHex:@"#43b051"];
}


#pragma mark search page color

+(UIColor*)boofAppLightGrayLineColor {
  return [self colorFromHex:@"#bdbdbd"];
}

+(UIColor*)boofAppSearchTitleColor {
  return [self colorFromHex:@"#363636"];
}

+(UIColor*)boofAppGreenLineColor{
  return [self colorFromHex:@"#43b051"];
}

+(UIColor*)boofAppSchoolNameTextColor{
  return [self colorFromHex:@"#f5d533"];
}

+(UIColor*)boofAppRedLineColor{
  return [self colorFromHex:@"#de5959"];
}

#pragma mark member details page colors

+(UIColor*)boofAppMemberImageBGColor{
  return [self colorFromHex:@"#ebebeb"];
}

+(UIColor*)boofAppMemberImageBorderColor{
  return [self colorFromHex:@"#f5f5f5"];
}

@end
