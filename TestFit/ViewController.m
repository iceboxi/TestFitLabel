//
//  ViewController.m
//  TestFit
//
//  Created by iceboxi on 2015/5/27.
//  Copyright (c) 2015年 iceboxi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSString *string;
}
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UILabel *nextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    string = @"超級長長長長長長的字串串串串串串串串串串翅";
    self.testLabel.text = string;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    CGRect frame = self.testLabel.frame;
    CGSize size = [string sizeWithFont:self.testLabel.font constrainedToSize:CGSizeMake(frame.size.width, frame.size.height) lineBreakMode:UILineBreakModeTailTruncation];
    
    self.testLabel.frame = CGRectMake(frame.origin.x, frame.origin.y, size.width, size.height);
    
    CGRect frame2 = self.nextLabel.frame;
    self.nextLabel.frame = CGRectMake(frame.origin.x+size.width, frame2.origin.y, frame2.size.width, frame2.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
