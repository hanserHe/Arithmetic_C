//
//  HSConstant.h
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/15.
//  Copyright © 2019 Hanser. All rights reserved.
//

#ifndef HSConstant_h
#define HSConstant_h

#define kScreenWidth UIApplication.sharedApplication.keyWindow.frame.size.width
#define kScreenHeight UIApplication.sharedApplication.keyWindow.frame.size.height



#pragma mark - color
#define UIColorFromRGBA(rgbValue, alphav)    [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(alphav)]

#endif /* HSConstant_h */
