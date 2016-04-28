//
//  ViewController.m
//  ParallaxHeader
//
//  Created by Naqi Syed on 4/21/16.
//  Copyright © 2016 Naqi Syed. All rights reserved.
//

#import "ViewController.h"

static CGFloat kTableViewHeaderHeight = 150.0f;

@interface ViewController () <UIScrollViewDelegate, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void) viewWillAppear:(BOOL)animated{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) scrollViewDidScroll:(UIScrollView *)scrollView{
    UIView *headerView = self.tableView.tableHeaderView;
    headerView.frame = (CGRect) {
        .size.height = kTableViewHeaderHeight - scrollView.contentOffset.y
    };
}

@end
