//
//  HSArithmeticTitleCell.m
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/15.
//  Copyright © 2019 Hanser. All rights reserved.
//

#import "HSArithmeticTitleCell.h"
#import "HSTableModel.h"

@interface HSArithmeticTitleCell()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *bgView;

@end

@implementation HSArithmeticTitleCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configViews];
    }
    return self;
}

- (void)configViews {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    _bgView = UIView.new;
    _bgView.backgroundColor = UIColor.lightGrayColor;
    _bgView.layer.cornerRadius = 5;
    _bgView.layer.masksToBounds = YES;
    [self addSubview:_bgView];
    
    _titleLabel = UILabel.new;
    _titleLabel.textColor = UIColor.whiteColor;
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.font = [UIFont systemFontOfSize:18];
    [self addSubview:_titleLabel];
    
    [_bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(15);
        make.right.equalTo(self).offset(-15);
        make.top.equalTo(self).offset(10);
        make.bottom.equalTo(self).offset(-10);
    }];
    
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self.bgView).offset(10);
        make.bottom.equalTo(self.bgView).offset(-10);
    }];
}

- (void)update:(HSTableModel *)model {
    _titleLabel.text = model.title;
}

@end
