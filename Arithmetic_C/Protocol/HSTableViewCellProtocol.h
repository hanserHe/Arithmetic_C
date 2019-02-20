//
//  HSTableViewCellProtocol.h
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

#ifndef HSTableViewCellProtocol_h
#define HSTableViewCellProtocol_h

@class HSTableModel;
@protocol HSTableViewCellProtocol <NSObject>

- (void)update:(HSTableModel *)model;

@end

#endif /* HSTableViewCellProtocol_h */
