//
//  ThrowCoinsView.m
//  Pokio
//
//  Created by langwang on 21/5/2021.
//  Copyright © 2021 深圳趣凡网络科技有限公司. All rights reserved.
//

#import "TestEmitterView.h"

@interface TestEmitterView()
@property (strong, nonatomic) CAEmitterLayer  *emiLayer;
@property (strong, nonatomic) IBOutlet UITextField *veiocityField;
@property (strong, nonatomic) IBOutlet UITextField *longitudeField;
@property (strong, nonatomic) IBOutlet UITextField *spinField;
@property (strong, nonatomic) IBOutlet UITextField *yAcceleratField;
@property (strong, nonatomic) IBOutlet UITextField *emitterSizeField;
@property (strong, nonatomic) IBOutlet UITextField *emissionField;

@end

@implementation TestEmitterView

+ (instancetype)create{
    return [[NSBundle mainBundle] loadNibNamed:@"TestEmitterView" owner:nil options:nil].firstObject;
}


- (IBAction)changeEmitterShape:(UIButton*)sender {
    NSArray *val = @[kCAEmitterLayerCircle, kCAEmitterLayerPoint, kCAEmitterLayerLine, kCAEmitterLayerRectangle, kCAEmitterLayerCuboid, kCAEmitterLayerSphere];
    self.emiLayer.emitterShape = val[sender.tag];
}

- (IBAction)changeEmitterMode:(UIButton*)sender {
    NSArray *val = @[kCAEmitterLayerPoints, kCAEmitterLayerOutline, kCAEmitterLayerSurface, kCAEmitterLayerVolume];
    self.emiLayer.emitterMode = val[sender.tag];
}


- (IBAction)beginAnim:(id)sender {
    [self.emiLayer removeFromSuperlayer];
    [self.layer addSublayer:self.emiLayer];
}

- (IBAction)remove:(id)sender {
    [self.emiLayer removeFromSuperlayer];
    self.emiLayer = nil;
}


- (CAEmitterLayer *)emiLayer{
    if (_emiLayer) {
        return _emiLayer;
    }
    CAEmitterLayer *l = [CAEmitterLayer layer];
    
    CAEmitterCell *cell = [[CAEmitterCell alloc] init];
    cell.birthRate = 6;
    cell.lifetime = 5;
    cell.velocity = [self.veiocityField.text intValue];
    cell.emissionLongitude = [self.longitudeField.text floatValue];
    cell.emissionRange = [self.emissionField.text floatValue];
    cell.velocityRange = 10;
    cell.scale = 0.5;
    cell.contents = (__bridge id)([UIImage imageNamed:@"notice_low_white_nor"].CGImage);
    cell.yAcceleration = [self.yAcceleratField.text floatValue];
    cell.spin = [self.spinField.text floatValue];
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    l.emitterCells = @[cell];
    l.emitterSize = CGSizeFromString(self.emitterSizeField.text);
    l.emitterPosition = CGPointMake(width * 0.5, 80);
    _emiLayer = l;
    return _emiLayer;
}

@end
