//
//  QListViewController.m
//  WinclassDemo
//
//  Created by xuanyin on 13-1-7.
//  Copyright (c) 2013年 congminghong. All rights reserved.
//

#import "ListenListViewController.h"

@interface ListenListViewController ()

@end

@implementation ListenListViewController
@synthesize sUrl,str,dic,array;;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"智能题库";
    array=[[NSMutableArray alloc]init];
    str=[[NSMutableString alloc]init];
    dic=[[NSMutableDictionary alloc]init];
    [self startParsering];
}
-(void)startParsering{
    NSString *path=self.sUrl;
    NSURL *newsURL=[[NSURL alloc]initWithString:path];
    NSData *xmlData=[[NSData alloc]initWithContentsOfURL:newsURL];
    NSXMLParser *parserTool=[[NSXMLParser alloc]initWithData:xmlData];
    parserTool.delegate=self;
    [parserTool parse];
    
    [parserTool release];
    [newsURL release];
    [xmlData release];
    
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    if ([elementName isEqualToString:@"item"]) {
        [dic removeAllObjects];
    }
    else if([elementName isEqualToString:@"id"]){
        [str setString:@""];
    }
    else if([elementName isEqualToString:@"title"]){
        [str setString:@""];
    }
    else if([elementName isEqualToString:@"type"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"gread"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"areaid"]){
        [str setString:@""];
    }
    else if([elementName isEqualToString:@"year"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"titletype"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"difficulty"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"select1"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"select2"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"select3"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"select4"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"select5"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"result"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"hint1"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"hint2"]){
        [str setString:@""];
    }
    else if([elementName isEqualToString:@"hint3"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"hint4"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"hint5"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"childid"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"department"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"parentid"]){
        [str setString:@""];
    }
    else if([elementName isEqualToString:@"createdate"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"subjectid"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"objective"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"soundfile"]){
        [str setString:@""];
    }
    
    else if([elementName isEqualToString:@"original"]){
        [str setString:@""];
    }
    
    
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    [str appendString:string];
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if ([elementName isEqualToString:@"item"]) {
        [array addObject:[NSMutableDictionary dictionaryWithDictionary:dic]];
    }
    else if([elementName isEqualToString:@"id"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"title"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"type"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"gread"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"areaid"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"year"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"titletype"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"difficulty"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"select1"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"select2"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"select3"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"select4"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"select5"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"result"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"hint1"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"hint2"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"hint3"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"hint4"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"hint5"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"childid"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    else if([elementName isEqualToString:@"department"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"parentid"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"createdate"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"subjectid"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"objective"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"soundfile"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
    else if([elementName isEqualToString:@"original"]){
        [dic setObject:[NSString stringWithString:str] forKey:elementName];
    }
    
}
-(void)parserDidEndDocument:(NSXMLParser *)parser{
    NSMutableArray *tempArray=[[NSMutableArray alloc]init];
    for(id element in array){
        Exam *tempNews=[[Exam alloc]init];
        tempNews.sTitle=[element objectForKey:@"title"];
        tempNews.sCreateDate=[element objectForKey:@"createdate"];
        
        NSLog(@"%@========",tempNews.sTitle);
        [tempArray addObject:tempNews];
    }
    [array removeAllObjects];
    array=tempArray;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:CellIdentifier];
    }
    Exam *tempNews=[array objectAtIndex:[indexPath row]];
    cell.textLabel.text=tempNews.sCreateDate;
    cell.detailTextLabel.text=tempNews.sTitle;
    
    
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
}
-(void)dealloc{
    [array release];
    [str release];
    dic=nil;
    [super dealloc];
}

@end
