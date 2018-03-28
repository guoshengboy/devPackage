//
//  NSString+GSHelper.m
//  导航栏
//
//  Created by caoguosheng on 2018/3/28.
//  Copyright © 2018年 caoguosheng. All rights reserved.
//

#import "NSString+GSHelper.h"

@implementation NSString (GSHelper)


NSString* GSGetNonEmptyString(id obj){
    if (obj == nil || obj == [NSNull null] ||
        ([obj isKindOfClass:[NSString class]] && [obj length] == 0) || [obj isEqual:@"null"]) {
        return @"";
    } else if ([obj isKindOfClass:[NSNumber class]]) {
        return GSGetNonEmptyString([obj stringValue]);
    }
    return obj;
}



- (CGFloat)getWidthOfStringWithHeight:(CGFloat)height withFont:(UIFont *)font{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle.copy};
    CGRect labelSize=[self boundingRectWithSize:CGSizeMake(MAXFLOAT, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
    return ceil(labelSize.size.width);//获取大于小数的最小整数
}


- (CGFloat)getHeightOfStringWithWidth:(CGFloat)width withFont:(UIFont *)font{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle.copy};
    CGRect labelSize=[self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
    return ceil(labelSize.size.height);
}






@end
