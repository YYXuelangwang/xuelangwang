//
//  ViewController.m
//  testTransForm
//
//  Created by 钱范儿-Developer on 16/10/12.
//  Copyright © 2016年 yinyong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *transformView;

@property (weak, nonatomic) IBOutlet UIView *backView;

@property (weak, nonatomic) IBOutlet UITextField *aField;

@property (weak, nonatomic) IBOutlet UITextField *bField;

@property (weak, nonatomic) IBOutlet UITextField *cField;

@property (weak, nonatomic) IBOutlet UITextField *dField;

@property (weak, nonatomic) IBOutlet UITextField *txField;

@property (weak, nonatomic) IBOutlet UITextField *tyField;

@property (weak, nonatomic) IBOutlet UILabel *rectLabel;

@property (weak, nonatomic) IBOutlet UILabel *originRectLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.originRectLabel.text = NSStringFromCGRect(self.transformView.frame);
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.originRectLabel.text = NSStringFromCGRect(self.transformView.frame);
}

- (IBAction)clickDoneButton:(id)sender {
    
    CGFloat a = [self.aField.text floatValue];
    CGFloat b = [self.bField.text floatValue];
    CGFloat c = [self.cField.text floatValue];
    CGFloat d = [self.dField.text floatValue];
    CGFloat tx = [self.txField.text floatValue];
    CGFloat ty = [self.tyField.text floatValue];
    
    
    [UIView animateWithDuration:1.0 animations:^{
        self.transformView.transform = CGAffineTransformMake(a, b, c, d, tx, ty);
    }];
//CATransform3DTranslate(<#CATransform3D t#>, <#CGFloat tx#>, <#CGFloat ty#>, <#CGFloat tz#>)
    self.rectLabel.text = NSStringFromCGRect(self.transformView.frame);
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

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
