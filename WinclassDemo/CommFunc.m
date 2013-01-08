//
//  CommFunc.m
//  WinClass
//
//  Created by easymobi on 11-11-17.
//  Copyright 2011年 WinClass. All rights reserved.
//

#import "CommFunc.h"


@implementation CommFunc

//Get config with type "BOOL" by key
+(BOOL)getBoolCfgByKey:(NSString *)sKey
{
    NSUserDefaults *udf = [NSUserDefaults standardUserDefaults];
    return [udf boolForKey:sKey];
}

//Save config with type "BOOL" by key
+(void)saveBoolCfg:(BOOL)bFlag byKey:(NSString *)sKey
{
    NSUserDefaults *udf = [NSUserDefaults standardUserDefaults];
    [udf setBool:bFlag forKey:sKey];
}

//Get config with type "int" by key
+(NSInteger)getIntCfgByKey:(NSString *)sKey
{
    NSUserDefaults *udf = [NSUserDefaults standardUserDefaults];
    return [udf integerForKey:sKey];
}

//Save config with type "int" by key
+(void)saveIntCfg:(NSInteger)iCfg byKey:(NSString *)sKey
{
    NSUserDefaults *udf = [NSUserDefaults standardUserDefaults];
    [udf setInteger:iCfg forKey:sKey];
}

//Get config with type "NSString" by key
+(NSString *)getStrCfgByKey:(NSString *)sKey
{
    NSUserDefaults *udf = [NSUserDefaults standardUserDefaults];
    return [udf stringForKey:sKey];
}

//Save config with type "NSString" by key
+(void)saveStrCfg:(NSString *)sCfg byKey:(NSString *)sKey
{
    NSUserDefaults *udf = [NSUserDefaults standardUserDefaults];
    [udf setObject:sCfg forKey:sKey];
}

//Get config with type "NSMutableArray" by key
+(NSMutableArray *)getArrayForKey:(NSString *)sKey
{
    NSUserDefaults *udf = [NSUserDefaults standardUserDefaults];
    return [udf objectForKey:sKey];
}

//Save config with type "NSMutableArray" by key
+(void)saveArrCfg:(NSMutableArray *)arr byKey:(NSString *)sKey
{
    NSLog(@"saveArrCfg called");
    NSUserDefaults *udf = [NSUserDefaults standardUserDefaults];
    [udf removeObjectForKey:sKey];
    [udf setObject:arr forKey:sKey];
}

+(NSString *) genHtmlStr:(NSString *)str
{
    NSMutableString *htmlStr = [NSMutableString stringWithString:str];

    NSDictionary * replacements = [NSDictionary dictionaryWithObjectsAndKeys:@"<", @"&lt;", @">", @"&gt;", @"&", @"&amp;", @"'", @"&apos;", @"\"", @"&quot;", nil];
    for (NSString * htmlEntity in replacements) 
    {
        [htmlStr replaceOccurrencesOfString:htmlEntity withString:[replacements objectForKey:htmlEntity] options:0 range:NSMakeRange(0, [htmlStr length])];
    }
    
    return [[[NSString alloc] initWithString:htmlStr] autorelease];
}


+(void)disableWebViewScrol:(UIWebView *)webView
{
    UIScrollView  *scroller = [webView.subviews objectAtIndex:0];
    if (scroller)
    {
        scroller.bounces = NO;
        scroller.scrollEnabled = NO;
    }
}

+ (NSString *)createMD5:(NSString *)signString
{
    const char*cStr =[signString UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, strlen(cStr), result);
    return[NSString stringWithFormat:
           @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
           result[0], result[1], result[2], result[3],
           result[4], result[5], result[6], result[7],
           result[8], result[9], result[10], result[11],
           result[12], result[13], result[14], result[15]
           ];
}

+ (void)showErrAlert:(NSString *)sErr
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:sErr message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

+(BOOL)validateEmail:(NSString*)email  
{  
    if((0 != [email rangeOfString:@"@"].length) &&  
       (0 != [email rangeOfString:@"."].length))  
    {  
        
        NSCharacterSet* tmpInvalidCharSet = [[NSCharacterSet alphanumericCharacterSet] invertedSet];  
        NSMutableCharacterSet* tmpInvalidMutableCharSet = [[tmpInvalidCharSet mutableCopy] autorelease];  
        [tmpInvalidMutableCharSet removeCharactersInString:@"_-"];  
        
        //使用compare option 来设定比较规则，如  
        //NSCaseInsensitiveSearch是不区分大小写  
        //NSLiteralSearch 进行完全比较,区分大小写  
        //NSNumericSearch 只比较定符串的个数，而不比较字符串的字面值  
        NSRange range1 = [email rangeOfString:@"@"  
                                      options:NSCaseInsensitiveSearch];  
        
        //取得用户名部分  
        NSString* userNameString = [email substringToIndex:range1.location];  
        NSArray* userNameArray   = [userNameString componentsSeparatedByString:@"."];  
        
        for(NSString* string in userNameArray)  
        {  
            NSRange rangeOfInavlidChars = [string rangeOfCharacterFromSet: tmpInvalidMutableCharSet];  
            if(rangeOfInavlidChars.length != 0 || [string isEqualToString:@""])  
                return NO;  
        }  
        
        NSString *domainString = [email substringFromIndex:range1.location+1];  
        NSArray *domainArray   = [domainString componentsSeparatedByString:@"."];  
        
        for(NSString *string in domainArray)  
        {  
            NSRange rangeOfInavlidChars=[string rangeOfCharacterFromSet:tmpInvalidMutableCharSet];  
            if(rangeOfInavlidChars.length !=0 || [string isEqualToString:@""])  
                return NO;  
        }  
        
        return YES;  
    }  
    else // no ''@'' or ''.'' present  
        return NO;  
}  

+ (NSString *)getCurDay
{
    NSString *sDate = [NSString stringWithFormat:@"%@", [NSDate date]];
    NSArray *arrTmp = [sDate componentsSeparatedByString:@" "];
    return [arrTmp objectAtIndex:0];
}

@end
