//
//  ExamViewController.m
//  WinClass
//
//  Created by easymobi on 11-11-17.
//  Copyright 2011年 WinClass. All rights reserved.
//

#import "ListenViewController.h"



@implementation ListenViewController

@synthesize  btnSearch;


#pragma mark -
#pragma mark view relative
#pragma mark -

-(void) initData
{
    
   
    
}



-(void) getYears
{
    
    
}

- (void)initOptions
{
    
}

- (void)loadData
{
    
}

- (void)downloadData
{
    
}

- (void)addTitle
{
    UIView *contain = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 96, 26)];
    UIImageView *imgV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 96, 26)];
    imgV.image = [UIImage imageNamed:@"title_smart.png"];
    [contain addSubview:imgV];
    [imgV release];
    
    self.navigationItem.titleView = contain;
    [contain release];
    
}

- (void)addOptionListTable
{
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //add title
    [self addTitle];
    
    //init option select
    [self initOptions];
    
    //add option list
    [self addOptionListTable];
    
    //init data
    [self initData];
    
    //get QTypes and Years from
    [self downloadData];
    
    //for ios5.0
    NSString *systemVersionStr = [[UIDevice currentDevice] systemVersion];
    float fSdkVersion = [systemVersionStr floatValue];
    if(fSdkVersion >= 5.0)
        [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"titlebar.png"] forBarMetrics:UIBarMetricsDefault];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    
    
}

- (void)dealloc
{
    
    [theScroller release];
    [horiScroller release];
    
    
    [super dealloc];
}


#pragma mark -
#pragma mark xib relative
#pragma mark -

- (NSString *)genSearchUrl
{
    
    
    
}

-(IBAction)doChangeYear:(id)sender
{
    if ([sender selectedSegmentIndex] == 0) {
        sSelectYear=@"（null）";
        NSLog(@"sSelectYear = %@", sSelectYear);
	}
    else if([sender selectedSegmentIndex] == 1) {
        sSelectYear=@"2012";
        NSLog(@"sSelectYear = %@", sSelectYear);
	}
    else if([sender selectedSegmentIndex] == 2) {
        sSelectYear=@"2011";
        NSLog(@"sSelectYear = %@", sSelectYear);
    }
    else if([sender selectedSegmentIndex] == 3) {
        sSelectYear=@"2010";
    }
    else if([sender selectedSegmentIndex] == 4) {
        sSelectYear=@"2009";
    }
    else if([sender selectedSegmentIndex] == 5) {
        sSelectYear=@"2008";
    }
    else if([sender selectedSegmentIndex] == 6) {
        sSelectYear=@"2007";
    }
    else if([sender selectedSegmentIndex] == 7) {
        sSelectYear=@"2006";
	}
    else if([sender selectedSegmentIndex] == 8) {
        sSelectYear=@"2005";
    }
    else if([sender selectedSegmentIndex] == 9) {
        sSelectYear=@"2004";
	}
    else if([sender selectedSegmentIndex] == 10) {
        sSelectYear=@"2003";
	}
    else if([sender selectedSegmentIndex] == 11) {
        sSelectYear=@"2002";
	}
    else if([sender selectedSegmentIndex] == 12) {
        sSelectYear=@"2001";
    }
    else if([sender selectedSegmentIndex] == 13) {
        sSelectYear=@"2000";
    }
    
}


-(IBAction)doSearch:(id)sender{
    
    NSString *selectYear;
    
    NSString *sUrl ;
    switch ([sender tag]) {
		case 0 :
            
            selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=getlisteningthemes&currentpagenum=1&pagesize=20&listentype=669"];
            
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
            break;
		case 1:
            selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=13&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
			
		case 2:
            selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=14&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
		case 3:
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=15&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
		case 4:
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=16&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
		case 5 :
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=17&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
        case 6 :
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=18&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
        case 7 :
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=19&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
        case 8 :
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=20&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
        case 9 :
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=21&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
        case 10 :
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=24&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
        case 11 :
			selectYear=[yearChoice titleForSegmentAtIndex:
                        yearChoice.selectedSegmentIndex];
            sUrl = [[NSString alloc] initWithString: @"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&pagesize=20&areaid=0&gread=0&titletype=28&year="];
            if([selectYear isEqualToString:@"不限"]){
                selectYear=@"";
            }
            sUrl = [sUrl stringByAppendingString:selectYear];
            
            NSLog(@"selectYear = %@", selectYear);
			break;
            
		default:
			break;
	}
	
    ListenListViewController *qListViewCtrl = [[ListenListViewController alloc] init];
    qListViewCtrl.sUrl = sUrl;
    
    
    [self.navigationController pushViewController:qListViewCtrl animated:YES];
    [qListViewCtrl release];
    [sUrl release];
    
    [selectYear release];
}




#pragma mark PassValue protocol
- (void)passValue:(NSString *)sValue forKey:(NSInteger)iTag
{
    
}

- (IBAction)doHidden:(id)sender
{
    
}







@end
