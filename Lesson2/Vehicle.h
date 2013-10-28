//
//  Vehicle.h
//  Lesson2
//
//  Created by Артем Бирюков on 27.10.13.
//  Copyright (c) 2013 Артем Бирюков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Transport.h"

@interface Vehicle : Transport

@property (strong, nonatomic) NSNumber* Price;

+(Vehicle*)vehicleWithName: (NSString*)name AndPrice:(NSNumber*) price;

@end
