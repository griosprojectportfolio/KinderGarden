  //
  //  VoiceSynthesizerViewController.m
  //  ImageShadowDemo
  //
  //  Created by GrepRuby on 30/08/14.
  //  Copyright (c) 2014 GrepRuby. All rights reserved.
  //

#import "VoiceSynthesizerViewController.h"

@interface VoiceSynthesizerViewController ()

@end

@implementation VoiceSynthesizerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
      // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
  self.speechSynthesizer.delegate = self;
}


-(void)directionInstructionSynthesizerMethod:(NSString *)strMessageToPlay
{
  AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:strMessageToPlay];

  utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"];
    //    utterance.pitchMultiplier = 0.5f;
  utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
  utterance.preUtteranceDelay = 0.2f;
  utterance.postUtteranceDelay = 0.2f;

  [self.speechSynthesizer speakUtterance:utterance];
}

#pragma mark - AVSpeechSynthesizerDelegate

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer
willSpeakRangeOfSpeechString:(NSRange)characterRange
                utterance:(AVSpeechUtterance *)utterance
{

}

/*
- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer
  didStartSpeechUtterance:(AVSpeechUtterance *)utterance
{

}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer
 didFinishSpeechUtterance:(AVSpeechUtterance *)utterance
{

}
*/
@end
