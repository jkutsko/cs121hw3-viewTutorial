//
//  JKViewController.m
//  viewTutorial
//
//  Created by Guest User on 9/10/14.
//  Copyright (c) 2014 Josh Kutsko. All rights reserved.
//

#import "JKGrid.h"
#import "JKViewController.h"

@interface JKViewController (){
    UIView* _gridView;
    UIButton* _button;
}

@end

@implementation JKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x,y,size,size);
    
    //Create grid View
    _gridView = [[JKGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    //create button
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0,0,buttonSize, buttonSize);
    //give button a title
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    [_button setTitle:@"Hit Me" forState:UIControlStateNormal];
    [_gridView addSubview:_button];
    
    //create target for button
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [_button addTarget:self action:@selector(buttonReleased:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    _button.backgroundColor = [UIColor blueColor];
    [_button setHighlighted:TRUE];
    NSLog(@"You pressed the button");

}
- (void)buttonReleased:(id)sender
{
    _button.backgroundColor = [UIColor redColor];
    
}



@end
