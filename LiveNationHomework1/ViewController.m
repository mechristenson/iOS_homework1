//
//  ViewController.m
//  LiveNationHomework1
//
//  Created by Mark Christenson on 2/6/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

//TODO: Make redView spin when screen is being touched
//TODO: Smooth out movement of redView

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupMyView];
}

- (void)setupMyView
{
    redView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redView];
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    myTouch = [touches anyObject];
    CGPoint touchPoint = [myTouch locationInView:self.view];
    
    redView.center = touchPoint;
}

@end
