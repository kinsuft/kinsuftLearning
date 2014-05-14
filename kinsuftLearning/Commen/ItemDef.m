//
//  ItemDef.m
//  kinsuftLearning
//
//  Created by 胡昆 on 14-5-13.
//  Copyright (c) 2014年 CT. All rights reserved.
//

#import "ItemDef.h"

@implementation ItemDef

@end

@implementation UserInfoItem

@end

@implementation DoctorInfoItem

- (id)initWithUserInfoItem:(UserInfoItem *)item
{
    self = [super init];
    self.doctorHeadPhoto = item.headPhoto;
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.doctorHeadPhoto forKey:@"doctorHeadPhoto"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    DoctorInfoItem* item = [[DoctorInfoItem alloc] init];
    item.doctorHeadPhoto = [aDecoder decodeObjectForKey:@"doctorHeadPhoto"];
    
    return item;
}

@end