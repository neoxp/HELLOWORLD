//
//  StartHelloWorldViewController.h
//  helloworld
//
//  Created by HackerMaster   on 27/3/18.
//  Copyright © 2018 appdevelopment.es. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVAudioPlayer.h>

#import <QuartzCore/QuartzCore.h>
#import <CoreLocation/CoreLocation.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface StartHelloWorldViewController : UIViewController
{
    
    AVAudioPlayer *reproductor;
    NSString *titulo;
    UISegmentedControl *segmentedControl;
    NSString *CargaEfectosDelJuego;
    
    NSArray *ArrayEfectos;
    NSInteger selectedButton;
    NSArray*sounds;
    NSArray*soundStrings;
}

@property (nonatomic) NSInteger selectedButton;
@property (nonatomic, weak) IBOutlet UILabel *outputlabel;
@property (nonatomic, strong) NSTimer *myTimer;
@property (weak, nonatomic) IBOutlet UILabel *PercerLabel;

@property (strong, nonatomic) IBOutlet UILabel *LblLoading;
@property (strong, nonatomic) IBOutlet UIProgressView *PrgView;
@property (strong, nonatomic)          NSString *LblLoadingText;
@property (strong, nonatomic)          NSString *PrgViewText;

- (void)comenzarAnimacion;

////////////////////////////////////////////////////////////////////////////


@property (nonatomic) float progressValue;

- (void)startProgress:(id)sender;

-(void)increaseProgressValue;


@property (strong, nonatomic) IBOutlet UIImageView *dataImageView;
@property (strong, nonatomic) IBOutlet UIImageView *urlImageView;
@property (strong, nonatomic) IBOutlet UIImageView *variableDurationImageView;



@end

