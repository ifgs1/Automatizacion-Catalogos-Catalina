//
//  CategoriesViewControllerTableViewController.m
//  Catalogo
//
//  Created by Ivan F Garcia S on 4/29/15.
//  Copyright (c) 2015 Ivan F Garcia S. All rights reserved.
//

#import "CategoriesViewControllerTableViewController.h"
#import "AFNetworking.h"
#import "Category.h"
#import "ProductsTableViewController.h"
@interface CategoriesViewControllerTableViewController ()

@end

@implementation CategoriesViewControllerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadCategories];
    [self.navigationItem setTitle:@"Categorias"];

}
-(void)loadCategories{
    
    NSURL *baseURL = [NSURL URLWithString:@"http://uniandes-msls.rhcloud.com/catalogo-service/rest/services/"];
    NSString *path = @"catalogo";
    
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    
    
    [manager GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        self.listCategories = [[NSMutableArray alloc]init];
        for (NSDictionary * response in responseObject) {
            self.titles = [response objectForKey:@"nombre"];
            NSDictionary *allCategories = [response objectForKey:@"categorias"];
            
            for (NSDictionary *detail in allCategories) {
                Category1 * category = [[Category1 alloc]init];
                category.products = [detail objectForKey:@"productos"];
                 category.id=[detail objectForKey:@"id"];
                 category.nombre=[detail objectForKey:@"nombre"];
                [self.listCategories addObject:category];
            }
        
        
        }
        [self.tableView reloadData];
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error while sending POST"
                                                            message:@"Sorry, try again."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
        
    }];
    



}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source


#pragma mark - Table View
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
#pragma mark - TableView Datasource Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.listCategories.count;
    
    
}
#pragma mark - TableView Delegate Methods
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
        
    }
    cell.textLabel.textColor = [UIColor blackColor];
    cell.detailTextLabel.textColor = [UIColor blackColor];
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    [tableView setSeparatorInset:UIEdgeInsetsZero];
    if ([tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    Category1 * category = [[Category1 alloc]init];
    category = [self.listCategories objectAtIndex:indexPath.row];
 
                     cell.textLabel.text = category.nombre;
 
    
    
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    

    self.myCategory= [self.listCategories objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"product" sender:self.myCategory];

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"product"])
    {
           ProductsTableViewController *bookingInfo = segue.destinationViewController;
        UINavigationController *navController = (UINavigationController*)[segue destinationViewController];
        ProductsTableViewController *eventsController = [navController topViewController];
        
       [eventsController setCategory:sender];
 

    }
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [UIColor clearColor];
    cell.backgroundView.backgroundColor = [UIColor clearColor];
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView* headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 22)];
    
    headerView.backgroundColor = [UIColor colorWithWhite:0.5f alpha:1.0f];
    headerView.layer.borderColor = [UIColor colorWithWhite:0.5 alpha:1.0].CGColor;
    headerView.layer.borderWidth = 1.0;
    
    UILabel* headerLabel = [[UILabel alloc] init];
    headerLabel.frame = CGRectMake(5, 2, tableView.frame.size.width - 5, 18);
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.textColor = [UIColor whiteColor];
    headerLabel.font = [UIFont boldSystemFontOfSize:16.0];
    headerLabel.text = @"Lista de categorias";
    headerLabel.textAlignment = NSTextAlignmentLeft;
    
    [headerView addSubview:headerLabel];
    
    return headerView;
}


@end
