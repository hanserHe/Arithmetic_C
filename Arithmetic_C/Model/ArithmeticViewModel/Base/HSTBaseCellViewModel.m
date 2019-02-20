//
//  HSTBaseCellViewModel.m
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

#import "HSTBaseCellViewModel.h"

@implementation HSTBaseCellViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _model = [HSTableModel new];
    }
    return self;
}


- (void)arithmeticMethod{}

@end
