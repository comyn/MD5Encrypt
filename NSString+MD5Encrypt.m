//
//  NSString+MD5.h
//  MD5Encrypt
//
//  Created by Comyn on 2017/7/25.
//  Copyright © 2017年 Comyn. All rights reserved.
//

#import "NSString+MD5Encrypt.h"
#import<CommonCrypto/CommonDigest.h>

@implementation NSString (MD5Encrypt)

#pragma mark - 32位 小写

- (NSString *)MD5For32Lower{
    
    const char* input = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);//CC_LONG 强转处理警告提示信息
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02x", result[i]];
    }
    
    return digest;
}

#pragma mark - 32位 大写

- (NSString *)MD5For32Upper{
    
    const char* input = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02X", result[i]];
    }
    
    return digest;
}

#pragma mark - 16位 大写

- (NSString *)MD5For16Upper{
    
    NSString *md5Str = [self MD5For32Upper];
    
    NSString *string;
    for (int i=0; i<24; i++) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return string;
}


#pragma mark - 16位 小写

- (NSString *)MD5For16Lower{
    
    NSString *md5Str = [self MD5For32Lower];
    
    NSString *string;
    for (int i=0; i<24; i++) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return string;
}


@end
