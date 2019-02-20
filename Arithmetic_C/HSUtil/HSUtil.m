//
//  HSUtil.m
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

#import "HSUtil.h"

@implementation HSUtil

int *transition_ObjCArrayTo_CArray(NSArray <NSNumber *>*objcArray) {
    int *tmpArr = NULL;
    memset(tmpArr, 0, objcArray.count);  //使用memset方法
    for (int i=0; i < objcArray.count; i++) {
        tmpArr[i] = objcArray[i].intValue;
    }
    return tmpArr;
}

@end
