//
//  CustCell.m
//  MiniTable
//
//  Created by tony on 14-4-25.
//  Copyright (c) 2014年 tony. All rights reserved.
//

#import "CustCell.h"

@implementation CustCell{
    UILabel *_NameValue;
    UILabel *_ColorValue;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        CGRect nameLableRect = CGRectMake(0,5, 70,15);
        UILabel *nameLable = [[UILabel alloc]initWithFrame:nameLableRect];
        nameLable.textAlignment = NSTextAlignmentRight;
        nameLable.text = @"Name:";
        nameLable.font = [UIFont boldSystemFontOfSize:15];
        [self.contentView addSubview:nameLable];
        
        CGRect colorLabelRect = CGRectMake(0, 26, 70, 15);
        UILabel *colorLabel = [[UILabel alloc] initWithFrame:colorLabelRect];
        colorLabel.textAlignment = NSTextAlignmentRight;
        colorLabel.text = @"Color:";
        colorLabel.font = [UIFont boldSystemFontOfSize:15];
        [self.contentView addSubview: colorLabel];
        
        CGRect nameValueRect = CGRectMake(80, 5, 200, 15);
        _NameValue = [[UILabel alloc] initWithFrame:
                      nameValueRect];
        _NameValue.textColor = [UIColor blueColor];
        _NameValue.font = [UIFont boldSystemFontOfSize:12];
        _NameValue.textAlignment = NSTextAlignmentNatural;
        [self.contentView addSubview:_NameValue];
        CGRect colorValueRect = CGRectMake(80, 26, 200, 15);
        _ColorValue = [[UILabel alloc] initWithFrame:
                       colorValueRect];
        _ColorValue.textColor = [UIColor redColor];
        _ColorValue.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:_ColorValue];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setName:(NSString *)n{
    if(![n isEqualToString:_name]){
        _name = [n copy];
        _NameValue.text = _name;
    }
}

-(void)setColor:(NSString *)color{
    if(![color isEqualToString:_color]){
        _color = [color copy];
        _ColorValue.text = _color;
    }
}

@end
