//
//  SecondViewController.h
//  MiniTable
//
//  Created by tony on 14-4-25.
//  Copyright (c) 2014年 tony. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustCellXib.h"
@interface SecondViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>;

@property (strong,nonatomic) NSArray *computers;

@end
