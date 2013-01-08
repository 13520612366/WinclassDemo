

#import "WinclassTabBarController.h"


@implementation WinclassTabBarController

@synthesize btnSmart, btnDict, btnListen, btnMore, imgV, imgShadow;


-(void)addTabBarCustomElements
{
    
    //smart
	btnSmart = [UIButton buttonWithType:UIButtonTypeCustom];
    btnSmart.frame = CGRectMake(0, 430, 80, 50);
	[btnSmart setBackgroundImage:[UIImage imageNamed:@"smart_normal.png"] forState:UIControlStateNormal];
	[btnSmart setBackgroundImage:[UIImage imageNamed:@"smart_selected.png"] forState:UIControlStateSelected];
   	[btnSmart setTag:0];
    
    
    //dictionary
	btnDict = [UIButton buttonWithType:UIButtonTypeCustom];
    btnDict.frame = CGRectMake(80, 430, 80, 50);
	[btnDict setBackgroundImage:[UIImage imageNamed:@"dictionary_normal.png"] forState:UIControlStateNormal];
	[btnDict setBackgroundImage:[UIImage imageNamed:@"dictionary_selected.png"] forState:UIControlStateSelected];
	[btnDict setTag:1];
    
    //listening
	btnListen = [UIButton buttonWithType:UIButtonTypeCustom];
    btnListen.frame = CGRectMake(160, 430, 80, 50);
	[btnListen setBackgroundImage:[UIImage imageNamed:@"listening_normal.png"] forState:UIControlStateNormal];
	[btnListen setBackgroundImage:[UIImage imageNamed:@"listening_selected.png"] forState:UIControlStateSelected];
	[btnListen setTag:2];
    
    //more
	btnMore = [UIButton buttonWithType:UIButtonTypeCustom];
    btnMore.frame = CGRectMake(240, 430, 80, 50);
	[btnMore setBackgroundImage:[UIImage imageNamed:@"more_normal.png"] forState:UIControlStateNormal];
	[btnMore setBackgroundImage:[UIImage imageNamed:@"more_selected.png"] forState:UIControlStateSelected];
	[btnMore setTag:3];
    

	[self.view addSubview:btnSmart];
	[self.view addSubview:btnDict];
	[self.view addSubview:btnListen];
	[self.view addSubview:btnMore];
    
    

	[btnSmart addTarget:self action:@selector(tabBarBtnClk:) forControlEvents:UIControlEventTouchUpInside];
	[btnDict addTarget:self action:@selector(tabBarBtnClk:) forControlEvents:UIControlEventTouchUpInside];
	[btnListen addTarget:self action:@selector(tabBarBtnClk:) forControlEvents:UIControlEventTouchUpInside];
	[btnMore addTarget:self action:@selector(tabBarBtnClk:) forControlEvents:UIControlEventTouchUpInside];
    
  
    
}

- (void)selectTab:(int)tabID
{
       
    switch(tabID)
    {
            
        case 0:
        {
            [btnSmart setSelected:true];
            [btnDict setSelected:false];
            [btnListen setSelected:false];
            [btnMore setSelected:false];
       
            break;
        }
        case 1:
        {
            [btnSmart setSelected:false];
            [btnDict setSelected:true];
            [btnListen setSelected:false];
            [btnMore setSelected:false];
         
            break;
        }
        case 2:
        {
            [btnSmart setSelected:false];
            [btnDict setSelected:false];
            [btnListen setSelected:true];
            [btnMore setSelected:false];
    
            break;
        }
        case 3:
        {
            [btnSmart setSelected:false];
            [btnDict setSelected:false];
            [btnListen setSelected:false];
            [btnMore setSelected:true];
        
            break;
        }
            
    }
    
    self.selectedIndex = tabID;
}

- (void)tabBarBtnClk:(id)sender
{
	[self selectTab:[sender tag]];
}

- (void)viewDidLoad
{
   
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
    
    //Custom tab bar
	[self addTabBarCustomElements];
}



- (void)dealloc
{
    [super dealloc];
}

@end
