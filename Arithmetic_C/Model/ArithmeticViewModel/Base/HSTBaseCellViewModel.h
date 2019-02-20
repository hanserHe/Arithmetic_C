//
//  HSTBaseCellViewModel.h
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HSTableModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, HSTableViewModelType) {
    HSTableViewModelSortArrayType = 0,                      // 只有一个参数并且是一个数组
};

@interface HSTBaseCellViewModel : NSObject

@property (nonatomic, assign) HSTableViewModelType viewModelType;
@property (nonatomic, strong) HSTableModel *model;


- (void)arithmeticMethod;

@end

NS_ASSUME_NONNULL_END
