//
//  WTDViewController.m
//  scrollViewSample
//
//  Created by rei kubonaga on 2014/02/10.
//  Copyright (c) 2014年 rei kubonaga. All rights reserved.
//

#import "WTDViewController.h"

@interface WTDViewController () <UIScrollViewDelegate>

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;

@end

@implementation WTDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    [self logScrollView:self.scrollView withString:@"viewWillAppear"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [self logScrollView:scrollView withString:@"scrollViewDidScroll"];
}

- (void)logScrollView:(UIScrollView *)scrollView withString:(NSString *)name {
    NSLog(@"%@ contentOffset x: %f y: %f, contentInset top: %f bottom: %f left: %f right: %f, contentSize height: %f, width: %f", name, scrollView.contentOffset.x, scrollView.contentOffset.y, scrollView.contentInset.top, scrollView.contentInset.bottom, scrollView.contentInset.left, scrollView.contentInset.right, scrollView.contentSize.height, scrollView.contentSize.width);
}

@end
