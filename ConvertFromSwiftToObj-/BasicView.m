//
//  BasicView.m
//  ConvertFromSwiftToObj-
//
//  Created by Ngô Sỹ Trường on 4/26/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "BasicView.h"

@interface BasicView ()

@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UISlider *rotateSlider;
@property (weak, nonatomic) IBOutlet UISlider *scaleSlider;

@end

@implementation BasicView


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)onShow:(UISwitch *)sender {
    self.myView.hidden = !sender.on;
}
- (IBAction)onAlphaChange:(UISlider *)sender {
    self.myView.alpha = (CGFloat)sender.value;
}
-(void) rotateAndScale {
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(self.rotateSlider.value * M_PI);
    CGAffineTransform scaleTransform = CGAffineTransformMakeScale(self.scaleSlider.value, self.scaleSlider.value);
    self.myView.transform = CGAffineTransformConcat(rotateTransform, scaleTransform);
}
- (IBAction)onRotate:(UISlider *)sender {
    [self rotateAndScale];
}
- (IBAction)onScale:(UISlider *)sender {
    [self rotateAndScale];
}
- (IBAction)onColorChange:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.myView.backgroundColor = [UIColor blackColor];
            break;
        case 1:
            self.myView.backgroundColor = [UIColor redColor];
            break;
        case 2:
            self.myView.backgroundColor = [UIColor greenColor];
            break;
        case 3:
            self.myView.backgroundColor = [UIColor blueColor];
            break;
        default:
            break;
    }
}

@end
