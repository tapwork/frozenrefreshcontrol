//
//  ViewController.m
//  testspinner
//
//  Created by Christian Menschel on 29/09/15.
//  Copyright © 2015 TAPWORK. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Some"];
    
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self action:@selector(refreshControlTriggered:)
             forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;
}

- (void)refreshControlTriggered:(UIRefreshControl *)refreshControl
{
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(20.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [refreshControl endRefreshing];
//    });
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Some" forIndexPath:indexPath];
    
    cell.textLabel.text = @"Nice row";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    ModalViewController *modalVC = [[ModalViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:modalVC];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
