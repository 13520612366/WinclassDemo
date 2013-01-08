//
//  Exam.h
//  WinclassDemo
//
//  Created by xuanyin on 13-1-7.guodddd
//  Copyright (c) 2013年 congminghong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exam : NSObject{
 
    NSString *sID;               //题目ID
    NSString *sTitle;            //试题题目
	NSString *sType;             //分类
    NSString *sGrade;            //年级
    NSString *sAreaId;           //地区ID
    NSString *sYear;             //年份
    NSString *sTitleType;        //题型
    NSString *sDifficulty;       //难度
    NSMutableArray *arrSelect;   //选项
    NSString *sSelect1;          //选项A
    NSString *sSelect2;          //选项B
    NSString *sSelect3;          //选项C
    NSString *sSelect4;          //选项D
    NSString *sSelect5;          //选项E
    NSString *sResult;           //正确答案
    NSMutableArray *arrPrompt;  //提示
    NSString *sHint1;            //提示一
    NSString *sHint2;            //提示二
    NSString *sHint3;            //提示三
    NSString *sHint4;            //提示四
    NSString *sHint5;            //提示五
    NSString *sChildId;          //子题编号
    NSString *sDepartment;       //是否有子题
    NSString *sParentId;         //父题ID
    NSString *sCreateDate;       //更新时间
    NSString *sSubjectId;        //学科ID
    NSString *sObjective;        //主客观标志
    NSString *sSoundfile;        //听力文件
    NSString *sOrignal;          //听力原稿
}

@property (nonatomic,retain) NSString *sID;
@property (nonatomic,retain) NSString *sTitle;
@property (nonatomic,retain) NSString *sType;
@property (nonatomic,retain) NSString *sGrade;
@property (nonatomic,retain) NSString *sAreaId;
@property (nonatomic,retain) NSString *sYear;
@property (nonatomic,retain) NSString *sTitleType;
@property (nonatomic,retain) NSString *sDifficulty;
@property (nonatomic,retain) NSMutableArray *arrSelect;
@property (nonatomic,retain) NSString *sSelect1;
@property (nonatomic,retain) NSString *sSelect2;
@property (nonatomic,retain) NSString *sSelect3;
@property (nonatomic,retain) NSString *sSelect4;
@property (nonatomic,retain) NSString *sSelect5;
@property (nonatomic,retain) NSString *sResult;
@property (nonatomic,retain) NSMutableArray *arrPrompt;
@property (nonatomic,retain) NSString *sHint1;
@property (nonatomic,retain) NSString *sHint2;
@property (nonatomic,retain) NSString *sHint3;
@property (nonatomic,retain) NSString *sHint4;
@property (nonatomic,retain) NSString *sHint5;
@property (nonatomic,retain) NSString *sChildId;
@property (nonatomic,retain) NSString *sDepartment;
@property (nonatomic,retain) NSString *sParentId;
@property (nonatomic,retain) NSString *sCreateDate;
@property (nonatomic,retain) NSString *sSubjectId;
@property (nonatomic,retain) NSString *sObjective;
@property (nonatomic,retain) NSString *sSoundfile;
@property (nonatomic,retain) NSString *sOrignal;


@end
