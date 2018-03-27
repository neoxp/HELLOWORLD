//
//  UIImage+animatedGIF.h
//  helloworld
//
//  Created by HackerMaster   on 27/3/18.
//  Copyright © 2018 appdevelopment.es. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImage (animatedGIF)


+ (UIImage *)animatedImageWithAnimatedGIFData:(NSData *)theData;


+ (UIImage *)animatedImageWithAnimatedGIFURL:(NSURL *)theURL;

@end
