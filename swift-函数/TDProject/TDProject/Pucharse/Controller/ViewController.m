//
//  ViewController.m
//  TDProject
//
//  Created by mac on 2019/4/29.
//  Copyright © 2019年 mac. All rights reserved.
//

#import "ViewController.h"
#import "PurchaseCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpTableView];
}

- (void)setUpTableView{
    [self registerNib];
    [self.view addSubview:self.tableView];
}

- (void)registerNib{
    [self.tableView registerNib:[UINib nibWithNibName:@"PurchaseCell" bundle:nil] forCellReuseIdentifier:@"PurchaseCell"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PurchaseCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PurchaseCell"];
    cell.productNameLabel.text = [NSString stringWithFormat:@"product %ld",indexPath.row];
    return cell;
    
}

#pragma -mark lazy
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
