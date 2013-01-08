//
//  ListenListViewController.h
//  WinclassDemo
//
//  Created by xuanyin on 13-1-8.
//  Copyright (c) 2013年 congminghong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Exam.h"
@interface ListenListViewController :UITableViewController<NSXMLParserDelegate>{
    NSString *sUrl;
    NSMutableArray *array;
    NSMutableString *str;
    NSMutableDictionary *dic;
}
@property(nonatomic,retain)NSString *sUrl;
@property(nonatomic,retain)NSMutableArray *array;
@property(nonatomic,retain)NSMutableString *str;
@property(nonatomic,retain)NSMutableDictionary *dic;
@end
