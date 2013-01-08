//
//  CommFunc.h
//  WinClass
//
//  Created by easymobi on 11-11-17.
//  Copyright 2011年 WinClass. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface CommFunc : NSObject {
    
}

+(BOOL)getBoolCfgByKey:(NSString *)sKey;
+(void)saveBoolCfg:(BOOL)bFlag byKey:(NSString *)sKey;

+(NSInteger)getIntCfgByKey:(NSString *)sKey;
+(void)saveIntCfg:(NSInteger)iCfg byKey:(NSString *)sKey;

+(NSString *)getStrCfgByKey:(NSString *)sKey;
+(void)saveStrCfg:(NSString *)sCfg byKey:(NSString *)sKey;

+(NSMutableArray *)getArrayForKey:(NSString *)sKey;
+(void)saveArrCfg:(NSMutableArray *)arr byKey:(NSString *)sKey;

+(NSString *)genHtmlStr:(NSString *)str;

+(void)disableWebViewScrol:(UIWebView *)webView;

+(NSString *)createMD5:(NSString *)signString;

+ (NSString *)getCurDay;

+(void)showErrAlert:(NSString *)sErr;

+(BOOL)validateEmail:(NSString*)email;
@end
