//
//  VoiceSynthesizerViewController.h
//  ImageShadowDemo
//
//  Created by GrepRuby on 30/08/14.
//  Copyright (c) 2014 GrepRuby. All rights reserved.
//

#import <UIKit/UIKit.h>
@import AVFoundation;

@interface VoiceSynthesizerViewController : UIViewController <AVSpeechSynthesizerDelegate>
@property (readwrite, nonatomic, strong) AVSpeechSynthesizer *speechSynthesizer;
-(void)directionInstructionSynthesizerMethod:(NSString *)strMessageToPlay;
@end
