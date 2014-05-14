//
//  ItemDef.h
//  kinsuftLearning
//
//  Created by 胡昆 on 14-5-13.
//  Copyright (c) 2014年 CT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"


@interface ItemDef : JSONModel
@end

//responseItem
@interface ResponseItem : JSONModel

@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString<Optional>* messege;

@end

//用户数据项
@interface UserInfoItem : JSONModel

@property (nonatomic, strong) NSString* headPhoto;

@end


//Doctor数据项
@interface DoctorInfoItem : JSONModel<NSCoding>

@property (nonatomic, strong) NSString* doctorHeadPhoto;

- (id)initWithUserInfoItem:(UserInfoItem*)item;

@end


//blockDefine
typedef void(^ResponseBlock)(BOOL success, ResponseItem* responseItem);