//
//  StartHelloWorldViewController.m
//  helloworld
//
//  Created by HackerMaster   on 27/3/18.
//  Copyright © 2018 appdevelopment.es. All rights reserved.
//

#import "StartHelloWorldViewController.h"

#import "UIImage+animatedGIF.h"
#import <ImageIO/ImageIO.h>

#import "AppDelegate.h"

#import "HelloWorldViewController.h"



@interface StartHelloWorldViewController (){}
@property (nonatomic) IBOutlet UIImageView *ExemploLogo;
@end

@implementation StartHelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startCount];
    
    _ExemploLogo = [[NSBundle mainBundle] URLForResource:@"Rotating_earth" withExtension:@"gif"];
    self.dataImageView.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL:_ExemploLogo]];
    self.urlImageView.image = [UIImage animatedImageWithAnimatedGIFURL:_ExemploLogo];
    
    _ExemploLogo = [[NSBundle mainBundle] URLForResource:@"Rotating_earth" withExtension:@"gif"];
    self.variableDurationImageView.image = [UIImage animatedImageWithAnimatedGIFURL:_ExemploLogo];
    
    
    
    
    self.PrgView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
    
    [self.view addSubview:self.LblLoading];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (void)updateUI:(NSTimer *)timer
{
    static int count =0; count++;
    
    if (count <=10)
    {
        self.LblLoading.text = [NSString stringWithFormat:@"Please wait......",count*10];
        self.PrgView.progress = (float)count/10.0f;
    } else
    {
        [self.myTimer invalidate];
        self.myTimer = nil;
        self.LblLoading.text = @"Loading Exempol....";
    }
    if (count <=10)
    {
        self.PercerLabel.text = [NSString stringWithFormat:@"%d %%",count*10];
        self.PrgView.progress = (float)count/10.0f;
    }
    else
    {
        [self.myTimer invalidate];
        self.myTimer = nil;
        self.LblLoading.text = [NSString stringWithFormat:@"Exempol data completed"];
        [self.myTimer invalidate];
        self.myTimer = nil;
        self.LblLoading.text = [NSString stringWithFormat:@"Accessing the Exempol"];
    }
    
}

- (void)startCount {
    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateUI:) userInfo:nil repeats:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
