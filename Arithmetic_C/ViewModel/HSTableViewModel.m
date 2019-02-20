//
//  HSViewModel.m
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

#import "HSTableViewModel.h"
#import "HSTwoSumViewModel.h"
#import "HSTableModel.h"

@interface HSTableViewModel()

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation HSTableViewModel

#pragma  mark - Private Method

#pragma  mark - life cycle

#pragma  mark - Event Response

#pragma  mark - Delegate

#pragma  mark - Notification

#pragma  mark - Public Method
- (void)processDataSource {
    HSTwoSumViewModel *twoSumViewModel = [[HSTwoSumViewModel alloc] initWithArray:@[@(1),@(2),@(3),@(5),@(11)] target:8];
    [self.dataArray addObject:twoSumViewModel];
}

#pragma  mark - getter / setter

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}

@end
