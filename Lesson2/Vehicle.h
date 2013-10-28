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

@property (strong, nonatomic) NSNumber* price;

<<<<<<< HEAD
-(Vehicle*)vehicleWithName: (NSString*)name AndPrice:(NSNumber*) price;
=======
+(Vehicle*)vehicleWithName: (NSString*)name AndPrice:(NSNumber*) price;
>>>>>>> d723b1852fbb3d7bc80bb7e51f1341ed7290b61d

@end
