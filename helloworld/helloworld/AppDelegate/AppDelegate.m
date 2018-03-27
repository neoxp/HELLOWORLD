//
//  AppDelegate.m
//  helloworld
//
//  Created by HackerMaster   on 27/3/18.
//  Copyright © 2018 appdevelopment.es. All rights reserved.
//

#import "AppDelegate.h"
#import "HelloWorldViewController.h"
#import <NotificationCenter/NotificationCenter.h>
#import <UserNotificationsUI/UserNotificationsUI.h>
#import <UserNotifications/UserNotifications.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize selectorHora;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UILocalNotification *notificacion = [[UILocalNotification alloc] init];
    
    notificacion.timeZone = [NSLocale systemLocale];
    notificacion.fireDate = self.selectorHora.description;
    notificacion.alertAction = @"Show Alert";
    notificacion.alertBody = @"!APP HELLO WORLD¡";
    notificacion.soundName = UILocalNotificationDefaultSoundName;
    notificacion.repeatInterval = NSDayCalendarUnit;
    notificacion.userInfo = [NSDictionary dictionaryWithObject:@"notificaciones" forKey:@"helloworld"];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    UILocalNotification *notificacion = [[UILocalNotification alloc] init];
    
    notificacion.timeZone = [NSLocale systemLocale];
    notificacion.fireDate = self.selectorHora.description;
    notificacion.alertAction = @"Show Alert";
    notificacion.alertBody = @"!APP HELLO WORLD¡";
    notificacion.soundName = UILocalNotificationDefaultSoundName;
    notificacion.repeatInterval = NSDayCalendarUnit;
    notificacion.userInfo = [NSDictionary dictionaryWithObject:@"notificaciones" forKey:@"helloworld"];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    UILocalNotification *notificacion = [[UILocalNotification alloc] init];
    
    notificacion.timeZone = [NSLocale systemLocale];
    notificacion.fireDate = self.selectorHora.description;
    notificacion.alertAction = @"Show Alert";
    notificacion.alertBody = @"!APP HELLO WORLD¡";
    notificacion.soundName = UILocalNotificationDefaultSoundName;
    notificacion.repeatInterval = NSDayCalendarUnit;
    notificacion.userInfo = [NSDictionary dictionaryWithObject:@"notificaciones" forKey:@"helloworld"];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
