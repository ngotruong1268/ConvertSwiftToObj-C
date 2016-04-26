//
//  BootLogic.m
//  ConvertFromSwiftToObj-
//
//  Created by Ngô Sỹ Trường on 4/26/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "BootLogic.h"
#import <UIKit/UIKit.h>
#import "MainScreen.h"

@implementation BootLogic
+ (void) boot:(UIWindow*) window {
    MainScreen *mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    NSDictionary* basic = @{SECTION: @"Basic", MENU : @[
                                    @{TITLE: @"Basic View" ,CLASS: @"BasicView"},
                                    @{TITLE: @"Chess",CLASS: @"ChessView"}
                                    ]};
    mainScreen.menu = @[basic];
    mainScreen.title = @"UIView - Controls";
    mainScreen.about = @"Đây là ứng dụng minh hoạ UIView - Controls";
    
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
