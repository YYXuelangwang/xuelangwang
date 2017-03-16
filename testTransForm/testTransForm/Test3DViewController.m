//
//  Test3DViewController.m
//  testTransForm
//
//  Created by hundred wang on 17/3/16.
//  Copyright © 2017年 yinyong. All rights reserved.
//

#import "Test3DViewController.h"

@interface Test3DViewController ()

@property (weak, nonatomic) IBOutlet UIView *transformView;

@property (weak, nonatomic) IBOutlet UIView *backView;

@property (weak, nonatomic) IBOutlet UITextField *m11;

@property (weak, nonatomic) IBOutlet UITextField *m12;

@property (weak, nonatomic) IBOutlet UITextField *m13;

@property (weak, nonatomic) IBOutlet UITextField *m14;


@property (weak, nonatomic) IBOutlet UITextField *m21;

@property (weak, nonatomic) IBOutlet UITextField *m22;

@property (weak, nonatomic) IBOutlet UITextField *m23;

@property (weak, nonatomic) IBOutlet UITextField *m24;


@property (weak, nonatomic) IBOutlet UITextField *m31;

@property (weak, nonatomic) IBOutlet UITextField *m32;

@property (weak, nonatomic) IBOutlet UITextField *m33;

@property (weak, nonatomic) IBOutlet UITextField *m34;


@property (weak, nonatomic) IBOutlet UITextField *m41;

@property (weak, nonatomic) IBOutlet UITextField *m42;

@property (weak, nonatomic) IBOutlet UITextField *m43;

@property (weak, nonatomic) IBOutlet UITextField *m44;

@end

@implementation Test3DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)clickDoneButton:(id)sender {
    
    CGFloat m11 = [self.m11.text floatValue];
    CGFloat m12 = [self.m12.text floatValue];
    CGFloat m13 = [self.m13.text floatValue];
    CGFloat m14 = [self.m14.text floatValue];
    
    CGFloat m21 = [self.m21.text floatValue];
    CGFloat m22 = [self.m22.text floatValue];
    CGFloat m23 = [self.m23.text floatValue];
    CGFloat m24 = [self.m24.text floatValue];
    
    CGFloat m31 = [self.m31.text floatValue];
    CGFloat m32 = [self.m32.text floatValue];
    CGFloat m33 = [self.m33.text floatValue];
    CGFloat m34 = [self.m34.text floatValue];
    
    CGFloat m41 = [self.m41.text floatValue];
    CGFloat m42 = [self.m42.text floatValue];
    CGFloat m43 = [self.m43.text floatValue];
    CGFloat m44 = [self.m44.text floatValue];

    
    
    [UIView animateWithDuration:1.0 animations:^{
        CATransform3D transf3D = {m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44};
        self.transformView.layer.transform = transf3D;
    }];
//    self.rectLabel.text = NSStringFromCGRect(self.transformView.frame);
    NSLog(@"cgrect:%@", NSStringFromCGRect(self.transformView.frame));
    
}

- (IBAction)bringBackVIewFromUpOrDown:(UIButton*)sender {
    sender.selected = !sender.isSelected;
    if (sender.selected) {
        [self.view bringSubviewToFront:self.backView];
    }else{
        [self.view bringSubviewToFront:self.transformView];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
