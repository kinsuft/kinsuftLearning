//
//  UserManager.h
//  kinsuftLearning
//
//  Created by administrator on 5/14/14.
//  Copyright (c) 2014 CT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemDef.h"
#import "KinsuftCommon.h"
#import "GlobelDef.h"

@interface UserManager : NSObject

+ (UserManager*)shareUserManager;
- (void)userLoginWithTelephone:(NSString*)tel password:(NSString*)password completionBlock:(ResponseBlock)block;

@end
