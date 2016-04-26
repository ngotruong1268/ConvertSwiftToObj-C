//
//  BootLogic.h
//  ConvertFromSwiftToObj-
//
//  Created by Ngô Sỹ Trường on 4/26/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define SECTION @"section"
#define MENU @"menu"
#define TITLE @"title"
#define CLASS @"class"

@interface BootLogic : NSObject
+ (void) boot: (UIWindow*) window;
@end
