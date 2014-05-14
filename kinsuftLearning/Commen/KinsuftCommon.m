//
//  KinsuftCommon.m
//  kinsuftLearning
//
//  Created by administrator on 5/13/14.
//  Copyright (c) 2014 CT. All rights reserved.
//

#import "KinsuftCommon.h"
#import "ARCMacros.h"

#define APP_DIRECTORY   @"kinsuftLearning_app"
#define USER_INFO_FILE  @"UserInfoFile_"

@implementation KinsuftCommon

+ (UIColor*)getColor:(NSString *)hexcolor
{
    unsigned int red, green, blue;
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    [[NSScanner scannerWithString:[hexcolor substringWithRange:range]] scanHexInt:&red];
    range.location = 2;
    [[NSScanner scannerWithString:[hexcolor substringWithRange:range]] scanHexInt:&green];
    range.location = 4;
    [[NSScanner scannerWithString:[hexcolor substringWithRange:range]] scanHexInt:&blue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
}

+ (NSString*)documentsDirectory
{
    NSString*  documentsDirectory = nil;
    
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask,YES );
    NSString* docDir = [paths objectAtIndex:0];
    
    if (docDir != nil) {
        documentsDirectory = [NSString stringWithFormat:@"%@",[docDir stringByAppendingString:APP_DIRECTORY]] ;
        
        NSFileManager* fm = [NSFileManager defaultManager];
        [fm createDirectoryAtPath:documentsDirectory withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    return SAFE_ARC_AUTORELEASE(documentsDirectory);
}

+ (DoctorInfoItem*)readUserInfoFromFile
{
    NSString* docdir = [self documentsDirectory];
    NSString* path = [NSString stringWithFormat:@"%@",[docdir stringByAppendingString:USER_INFO_FILE]];
    NSData* data = [NSData dataWithContentsOfFile:path];
    
    DoctorInfoItem* doctorInfoItem;
    if (path != nil) {
        doctorInfoItem = [NSKeyedUnarchiver  unarchiveObjectWithData:data];
    }
    
    return doctorInfoItem;
}
@end
