//
//  HelloWorldViewController.m
//  helloworld
//
//  Created by HackerMaster   on 27/3/18.
//  Copyright © 2018 appdevelopment.es. All rights reserved.
//

#import "HelloWorldViewController.h"
#import "UIImage+animatedGIF.h"
#import <ImageIO/ImageIO.h>


@interface HelloWorldViewController ()
@property (nonatomic) IBOutlet UIImageView *ExemploLogo;
@property (strong, nonatomic) IBOutlet UIImageView *dataImageView;
@property (strong, nonatomic) IBOutlet UIImageView *urlImageView;
@property (strong, nonatomic) IBOutlet UIImageView *variableDurationImageView;


@end

@implementation HelloWorldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _ExemploLogo = [[NSBundle mainBundle] URLForResource:@"Rotating_earth" withExtension:@"gif"];
    self.dataImageView.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL:_ExemploLogo]];
    self.urlImageView.image = [UIImage animatedImageWithAnimatedGIFURL:_ExemploLogo];
    
    _ExemploLogo = [[NSBundle mainBundle] URLForResource:@"Rotating_earth" withExtension:@"gif"];
    self.variableDurationImageView.image = [UIImage animatedImageWithAnimatedGIFURL:_ExemploLogo];
    
    
}


///////////// HELLO WORLD //////////////////////////////////////////////////

- (IBAction)showMessageHelloWorld
{
    UIAlertView *helloWorldAlert = [[UIAlertView alloc]
                                    initWithTitle:@"My Exempol" message:@"Hello, World!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display the Hello World Message
    [helloWorldAlert show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
