//
//  PurchaseCell.h
//  TDProject
//
//  Created by mac on 2019/4/29.
//  Copyright © 2019年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PurchaseCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *productNameLabel;
@property (weak, nonatomic) IBOutlet UIButton *buyButton;

@end

NS_ASSUME_NONNULL_END
