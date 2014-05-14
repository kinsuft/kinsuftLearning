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


#define DEFINE_SINGLETON_FOR_CLASS(className) \
\
+ (className *)shared##className { \
static className *shared##className = nil; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
shared##className = [[self alloc] init]; \
}); \
return shared##className; \
}


@interface KinsuftCommon : NSObject

+ (UIColor*)getColor:(NSString*)hexcolor;
+ (NSString*)documentsDirectory;
+ (DoctorInfoItem*)readUserInfoFromFile;

@end
