//
//  MyCell.h
//  Lesson2
//
//  Created by Артем Бирюков on 30.10.13.
//  Copyright (c) 2013 Артем Бирюков. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *starImage;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;


@end
