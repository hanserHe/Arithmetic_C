//
//  HSRootViewController.m
//  Arithmetic_C
//
//  Created by Hanser on 2018/12/17.
//  Copyright © 2018 Hanser. All rights reserved.
//

#import "HSRootViewController.h"
#import "HSArithmeticTitleCell.h"
#import "HSTableViewModel.h"
#import "HSTableViewCellProtocol.h"
#import "HSTwoSumViewModel.h"


static NSString *kArithmeticCellIdentify = @"HSArithmeticTitleCell";

@interface HSRootViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) HSTableViewModel *tableViewModel;

@end

@implementation HSRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configViews];
    [self handleData];
}

- (void)configViews {
    self.title = @"Hanser's arithmetic trading";
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.tableView];
}

- (void)handleData {
    [self.tableViewModel processDataSource];
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell<HSTableViewCellProtocol> *cell = [tableView dequeueReusableCellWithIdentifier:kArithmeticCellIdentify];
    HSTBaseCellViewModel *viewModel = [self.tableViewModel.dataArray objectAtIndex:indexPath.row];
    [cell update:viewModel.model];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableViewModel.dataArray.count;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    HSTBaseCellViewModel *viewModel = [self.tableViewModel.dataArray objectAtIndex:indexPath.row];
    [viewModel arithmeticMethod];
}

#pragma mark - Setter && Getter

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight - 64) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellEditingStyleNone;
        _tableView.estimatedRowHeight = 100;
        [_tableView registerClass:[HSArithmeticTitleCell class] forCellReuseIdentifier:kArithmeticCellIdentify];
    }
    return _tableView;
}

- (HSTableViewModel *)tableViewModel {
    if (!_tableViewModel) {
        _tableViewModel = [HSTableViewModel new];
    }
    return _tableViewModel;
}

@end
