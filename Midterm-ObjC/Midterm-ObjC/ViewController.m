//
//  ViewController.m
//  Midterm-ObjC
//
//  Created by Nav Bhatti on 2015-02-15.
//  Copyright (c) 2015 Nav Bhatti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *square;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapGesture:(UITapGestureRecognizer *)sender {
    self.square.center = [sender locationInView:self.view];
}
- (IBAction)swipeGesture:(UISwipeGestureRecognizer *)sender {
    if (sender.direction == UISwipeGestureRecognizerDirectionUp ||
        sender.direction == UISwipeGestureRecognizerDirectionDown) {
        self.square.backgroundColor = [self getRandomColor];
    }else if (sender.direction == UISwipeGestureRecognizerDirectionLeft ||
              sender.direction == UISwipeGestureRecognizerDirectionRight){
        self.view.backgroundColor = [self getRandomColor];
    }
}
- (IBAction)longPressGesture:(UILongPressGestureRecognizer *)sender {
    self.square.backgroundColor = [self getRandomColor];
}

- (IBAction)rotationGesture:(UIRotationGestureRecognizer *)sender {
    CGAffineTransform transform = CGAffineTransformMakeRotation(sender.rotation);
    self.square.transform = transform;
}


-(UIColor *)getRandomColor{
    CGFloat red = rand()*256;
    CGFloat green = rand()*256;
    CGFloat blue = rand()*256;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}

@end
