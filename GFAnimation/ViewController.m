//
//  ViewController.m
//  GFAnimation
//
//  Created by  高帆 on 16/4/21.
//  Copyright © 2016年  高帆. All rights reserved.
//

#import "ViewController.h"
#import "GFAnimation.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)start:(id)sender {
    [GFAnimation starAnimatingWithImageView:self.img withRepeatCount:0 withCount:40 withImgName:@"eat"];
}

- (IBAction)stop:(id)sender {
    [GFAnimation clearCacheWithImageView:self.img];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
