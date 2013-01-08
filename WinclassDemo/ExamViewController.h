//
//  ExamViewController.h
//  WinClass
//
//  Created by easymobi on 11-11-17.
//  Copyright 2011年 WinClass. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QListViewController.h"

@interface ExamViewController : UIViewController 
            
{
 

    NSString *sSelectYear;
    
    //button
    IBOutlet UIButton *btnSearch;
    
    IBOutlet UIScrollView *theScroller;
    IBOutlet UIScrollView *horiScroller;  
    IBOutlet UISegmentedControl *yearChoice;
}


@property (nonatomic,retain) UIScrollView *theScroller;
@property (nonatomic,retain) UIScrollView *horiScroller;
@property (nonatomic,retain) UISegmentedControl *yearChoice;



@property (nonatomic, retain) IBOutlet UIButton *btnSearch;

-(IBAction)doSelect:(id)sender;
-(IBAction)doHidden:(id)sender;
-(IBAction)doSearch:(id)sender;
-(IBAction)doChangeYear:(id)sender;
@end
