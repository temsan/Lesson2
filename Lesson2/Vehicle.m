//
//  Vehicle.m
//  Lesson2
//
//  Created by Артем Бирюков on 27.10.13.
//  Copyright (c) 2013 Артем Бирюков. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

<<<<<<< HEAD
-(Vehicle*) vehicleWithName:(NSString *)name AndPrice:(NSNumber *)price
{
    Vehicle* newVehicle = [[Vehicle alloc] init];
    
    newVehicle.Name = name;
    newVehicle.Price = price;
    
=======
+(Vehicle*) vehicleWithName:(NSString *)name AndPrice:(NSNumber *)price
{
    Vehicle* newVehicle = [[Vehicle alloc] init];
    newVehicle.Name = name;
    newVehicle.Price = price;
    
>>>>>>> d723b1852fbb3d7bc80bb7e51f1341ed7290b61d
    return newVehicle;
}

@end
