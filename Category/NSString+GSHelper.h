//
//  NSString+GSHelper.h
//  导航栏
//
//  Created by caoguosheng on 2018/3/28.
//  Copyright © 2018年 caoguosheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (GSHelper)



/**
 获取非空字符串
 */
NSString* GetNonEmptyString(id obj);

/**获取宽度*/
- (CGFloat)getWidthOfStringWithHeight:(CGFloat)height withFont:(UIFont *)font;


/**获取高度*/
- (CGFloat)getHeightOfStringWithWidth:(CGFloat)width withFont:(UIFont *)font;




@end
