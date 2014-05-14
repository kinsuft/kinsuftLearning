//
//  UserManager.m
//  kinsuftLearning
//
//  Created by administrator on 5/14/14.
//  Copyright (c) 2014 CT. All rights reserved.
//

#import "UserManager.h"
#import <objc/runtime.h>
#import "MKNetworkKit.h"

@interface UserManager ()

@property (nonatomic, strong) MKNetworkEngine* engine;
@property BOOL isLogin;

@end

@implementation UserManager

DEFINE_SINGLETON_FOR_CLASS(UserManager)


- (void)httpProcessWithUrl:(NSString*)url completionHandler:(MKNKResponseBlock)completionBlock errorHandle:(MKNKResponseErrorBlock)errorBlock
{
    if (_engine == nil) {
        _engine = [[MKNetworkEngine alloc] initWithHostName:HostName];
    }
    
    MKNetworkOperation* op = [_engine operationWithURLString:url];
    [op addCompletionHandler:^(MKNetworkOperation *op) {
        if (completionBlock != nil) {
            completionBlock(op);
        }
    } errorHandler:^(MKNetworkOperation *op, NSError *error) {
        if (completionBlock != nil) {
            errorBlock(op, error);
        }
    }];
    
    [_engine enqueueOperation:op];
}


- (void)userLoginWithTelephone:(NSString *)tel password:(NSString *)password completionBlock:(ResponseBlock)block
{
    NSString* url = [NSString stringWithFormat:LoginUrl,BaseUrl,tel,password];
    
    self httpProcessWithUrl:url completionHandler:^(MKNetworkOperation *completedOperation) {
        
         NSLog(@"response : %@", op.responseString);
        
    } errorHandle:<#^(MKNetworkOperation *completedOperation, NSError *error)errorBlock#>
}

@end
