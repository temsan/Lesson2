//
//  mainTableViewController.m
//  Lesson2
//
//  Created by Артем Бирюков on 29.10.13.
//  Copyright (c) 2013 Артем Бирюков. All rights reserved.
//

#import "AFNetworking.h"
#import "mainTableViewController.h"
#import "MyCell.h"
#import "Vehicle.h"

#define routesURL @"http://itomy.ch/routes.php"

@interface mainTableViewController ()

@property (strong, nonatomic) NSArray *routes;

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
    
    _routes = [[NSArray alloc] init];
    id route;
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:routesURL parameters:nil success:
     ^(AFHTTPRequestOperation *operation, id responseObject) {
        
         for (route in responseObject) {
             _routes = [_routes arrayByAddingObject:[Vehicle vehicleWithName:[route objectForKey:@"route_title"] AndPrice: [route objectForKey:@"route_price"]]];
             
         }
        
         [self.tableView reloadData];
    }
    failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
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
    return [self.routes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    long index = indexPath.section * 10 + indexPath.row;
    Vehicle *currentObj = [self.routes objectAtIndex: index];
    
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
