//
//  HSViewModel.h
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSTableViewModel : NSObject

@property (nonatomic, strong, readonly) NSMutableArray *dataArray;

- (void)processDataSource;

@end

NS_ASSUME_NONNULL_END
