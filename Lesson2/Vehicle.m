//
//  Vehicle.m
//  Lesson2
//
//  Created by Артем Бирюков on 27.10.13.
//  Copyright (c) 2013 Артем Бирюков. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

+(id) InitWithName:(NSString *)name AndPrice:(NSNumber *)price
{
    this.Name = name;
    this.Price = price;
    
    return this;
}

@end
