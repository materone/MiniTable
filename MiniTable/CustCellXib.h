//
//  CustCellXib.h
//  MiniTable
//
//  Created by tony on 14-4-27.
//  Copyright (c) 2014年 tony. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustCellXib : UITableViewCell
@property (copy,nonatomic) NSString *name;
@property (copy,nonatomic) NSString *color;
@property (strong,nonatomic) IBOutlet UILabel *NameValue;
@property (strong,nonatomic) IBOutlet UILabel *ColorValue;
@end
