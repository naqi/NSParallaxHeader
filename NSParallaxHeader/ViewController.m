//
//  ViewController.m
//  ParallaxHeader
//
//  Created by Naqi Syed on 4/21/16.
//  Copyright © 2016 Naqi Syed. All rights reserved.
//

#import "ViewController.h"
#import <MXParallaxHeader.h>
#import <UINavigationBar+Awesome.h>
#import "TableViewHeader.h"

static CGFloat kTableViewHeaderHeight = 150.0f;

@interface ViewController () <UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _headerView.frame = (CGRect) {
        .size.width = self.tableView.frame.size.width,
        .size.height = kTableViewHeaderHeight
    };
    
    self.tableView.tableHeaderView = nil;
    self.tableView.parallaxHeader.view = [TableViewHeader instantiateViewWithSize:CGSizeMake(self.tableView.frame.size.width, kTableViewHeaderHeight)];
    self.tableView.parallaxHeader.minimumHeight = 70.0f;
    self.tableView.parallaxHeader.height = kTableViewHeaderHeight;
    self.tableView.parallaxHeader.mode = MXParallaxHeaderModeFill;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
    [cell.textLabel setText:[NSString stringWithFormat:@"Row: %i", (int) indexPath.row]];
    
    return cell;
}

@end
