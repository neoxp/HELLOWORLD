//
//  AppDelegate.h
//  helloworld
//
//  Created by HackerMaster on 27/3/18.
//  Copyright © 2018 appdevelopment.es. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NotificationCenter/NotificationCenter.h>
#import <UserNotificationsUI/UserNotificationsUI.h>
#import <UserNotifications/UserNotifications.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(weak,nonatomic) IBOutlet NSDate *selectorHora;

@end

