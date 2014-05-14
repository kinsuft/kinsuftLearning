//
//  KinsuftCommon.h
//  kinsuftLearning
//
//  Created by administrator on 5/13/14.
//  Copyright (c) 2014 CT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemDef.h"

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define ios7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)?YES:NO

@interface KinsuftCommon : NSObject

+ (UIColor*)getColor:(NSString*)hexcolor;
+ (NSString*)documentsDirectory;
+ (DoctorInfoItem*)readUserInfoFromFile;

@end
