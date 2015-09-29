//
//  ModalViewController.m
//  testspinner
//
//  Created by Christian Menschel on 29/09/15.
//  Copyright © 2015 TAPWORK. All rights reserved.
//

#import "ModalViewController.h"

@implementation ModalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                                                            target:self
                                                                                            action:@selector(dismissAction:)];
}

- (void)dismissAction:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
