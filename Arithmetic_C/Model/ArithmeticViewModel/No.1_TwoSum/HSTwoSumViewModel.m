//
//  HSTwoSumViewModel.m
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

#import "HSTwoSumViewModel.h"
#import "Arithmetic_C-Swift.h"

@interface HSTwoSumViewModel()

@property (nonatomic, copy) NSArray <NSNumber *>*sortArray;
@property (nonatomic, assign) int target;

@end

@implementation HSTwoSumViewModel


- (instancetype)initWithArray:(NSArray *)array target:(int)target {
    self = [super init];
    if (self) {
        self.model.title = @"No.1 Two Sum";
        self.viewModelType = HSTableViewModelSortArrayType;
        self.sortArray = array;
        self.target = target;
    }
    return self;
}

- (void)arithmeticMethod {
//    NSArray *dataArr = [self twoSum];
    NSArray *dataArr = [self twoSum:@[@(1), @(3), @(4), @(10)] target:13];
//    [viewModel twoSumWithArray:@[@(1), @(4), @(5), @(8)] target:12];
//    [viewModel twoSum:@[@(1), @(4), @(5), @(8)] target:12];
//    [viewModel test];
//    NSArray *dataArr = [viewModel];
    NSLog(@"%@",dataArr);
}

- (NSMutableArray *)twoSum:(NSArray <NSNumber *>*)array target:(NSInteger)target {
    if (!array) {
        return nil;
    }
    NSMutableArray *tmpArr = NSMutableArray.new;
    NSMutableSet *set = NSMutableSet.new;
    NSInteger findTarget;
    for (NSNumber *number in array) {
        findTarget = target - number.integerValue;
        NSNumber *findNumber = [NSNumber numberWithInteger:findTarget];
        if ([set containsObject:findNumber]) {
            NSInteger index1 = [array indexOfObject:findNumber];
            NSInteger index2 = [array indexOfObject:number];
            [tmpArr addObject:[NSNumber numberWithInteger:index1]];
            [tmpArr addObject:[NSNumber numberWithInteger:index2]];
        }
        [set addObject:number];
    }
    return tmpArr;
}

@end

