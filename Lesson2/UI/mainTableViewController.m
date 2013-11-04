//
//  mainTableViewController.m
//  Lesson2
//
//  Created by Артем Бирюков on 29.10.13.
//  Copyright (c) 2013 Артем Бирюков. All rights reserved.
//

#import "mainTableViewController.h"
#import "MyCell.h"
#import "Vehicle.h"

@interface mainTableViewController ()

@end

@implementation mainTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Источник данных для view запихиваем в property контроллера
    // Здесь получается, нет отдельно модели от контроллера
    // По идее при загрузке view должно вызываться получение данных от модели
    
    self.marshrutki = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= 20; i++) {
        
        NSString *name = [NSString stringWithFormat:@"Маршрут К-%d", i];
        NSNumber *price = [NSNumber numberWithLong: random()%40];
        
        Vehicle *vehicle = [Vehicle vehicleWithName: name AndPrice: price];
        [self.marshrutki addObject: vehicle];
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSString* ) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString* result = @"";
    
    if (section == 0) {
        result = @"Фаворитные маршруты:";
    } else {
        result = @"Прочие:";
    }
    
    return result;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    long index = indexPath.section * 10 + indexPath.row;
    Vehicle *currentObj = [self.marshrutki objectAtIndex: index];
    
    BOOL isMarked = (indexPath.section == 0);
    
    if (isMarked) {
        cell.starImage.image = [UIImage imageNamed:@"star"];
    }
    else
    {
        cell.starImage.image = [UIImage imageNamed:@"greyStar"];
    }
    
    cell.nameLabel.text = currentObj.Name;
    cell.priceLabel.text = [NSString stringWithFormat:@"%@ руб.", currentObj.price];
    
    return cell;
}



@end
