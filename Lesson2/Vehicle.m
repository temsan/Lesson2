//
//  Vehicle.m
//  Lesson2
//
//  Created by Артем Бирюков on 27.10.13.
//  Copyright (c) 2013 Артем Бирюков. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

+(Vehicle*) vehicleWithName:(NSString *)name AndPrice:(NSNumber *)price
{
    Vehicle* newVehicle = [[Vehicle alloc] init];
    newVehicle.Name = name;
    newVehicle.Price = price;
    
    return newVehicle;
}

@end
