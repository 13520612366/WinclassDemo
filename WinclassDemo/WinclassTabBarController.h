//
//  WinclassTabBarController.h
//  WinclassDemo
//
//  Created by xuanyin on 13-1-6.
//  Copyright (c) 2013年 congminghong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WinclassTabBarController : UITabBarController{
UIButton *btnSmart;
UIButton *btnDict;
UIButton *btnListen;
UIButton *btnMore;

UIImageView *imgShadow;
UIImageView *imgv;
}

@property (assign) UIButton *btnSmart;
@property (assign) UIButton *btnDict;
@property (assign) UIButton *btnListen;
@property (assign) UIButton *btnMore;
@property (assign) UIImageView *imgShadow;
@property (assign) UIImageView *imgV;

-(void)addTabBarCustomElements;

@end
