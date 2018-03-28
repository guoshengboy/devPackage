//
//  macro.h
//  导航栏
//
//  Created by caoguosheng on 2018/3/28.
//  Copyright © 2018年 caoguosheng. All rights reserved.
//

#ifndef macro_h
#define macro_h


//屏幕
#define SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
#define SCREENH_HEIGHT [UIScreen mainScreen].bounds.size.height

//通知
#define GSNotificationCenter [NSNotificationCenter defaultCenter]

//颜色
#define GSHexColor(x)  [UIColor colorWithRed:((float)((x & 0xFF0000) >> 16))/255.0 green:((float)((x & 0xFF00) >> 8))/255.0 blue:((float)(x & 0xFF))/255.0 alpha:1.0]
#define GSRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define GSRGBAColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]


#endif /* macro_h */
