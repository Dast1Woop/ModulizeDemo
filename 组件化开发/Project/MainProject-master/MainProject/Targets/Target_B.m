//
//  Target_B.m
//  MainProject
//
//  Created by LongMa on 2021/6/4.
//  Copyright © 2021 casa. All rights reserved.
//

#import "Target_B.h"
#import "BViewController.h"

@implementation Target_B
- (UIViewController *)Action_viewController:(NSDictionary *)params{
    NSString *content = params[@"contentText"];
    
    return [[BViewController alloc] initWithContentText:content];
}
@end
