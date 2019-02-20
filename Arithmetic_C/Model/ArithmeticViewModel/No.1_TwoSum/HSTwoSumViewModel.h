//
//  HSTwoSumViewModel.h
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HSTBaseCellViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface HSTwoSumViewModel : HSTBaseCellViewModel

- (instancetype)initWithArray:(NSArray *)array target:(int)target;

@end

NS_ASSUME_NONNULL_END
