//
//  NSString+MD5.h
//  MD5Encrypt
//
//  Created by Comyn on 2017/7/25.
//  Copyright © 2017年 Comyn. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (MD5Encrypt)

/*
 * MD5加密是不可逆的,多用来进行验证
 * MD5生成的是固定的128bit，即128个0和1的二进制位，
 * 实际应用开发中，通常是以16进制输出的，所以正好就是32位的16进制，即32个16进制的数字
 *
 */

/**
 MD5Encrypt 32位16进制小写
 
 @return 加密后数据
 */
- (NSString *_Nullable)MD5For32Lower;

/**
 MD5Encrypt 32位16进制大写
 
 @return 加密后32位大写字符串
 */
- (NSString *_Nullable)MD5For32Upper;

/**
 MD5Encrypt 16位16进制大写
 
 @return 加密后16位大写字符串
 */
- (NSString *_Nullable)MD5For16Upper;

/**
 MD5Encrypt 32位16进制小写
 
 @return 加密后16位小写字符串
 */
- (NSString *_Nullable)MD5For16Lower;


@end
