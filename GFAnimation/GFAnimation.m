//
//  GFAnimation.m
//  BLE
//
//  Created by  高帆 on 16/4/5.
//  Copyright © 2016年  高帆. All rights reserved.
//

#import "GFAnimation.h"

@implementation GFAnimation

+ (void)starAnimatingWithImageView:(UIImageView *)img withRepeatCount:(int)repeatCount withCount:(int)count withImgName:(NSString *)imgName {
    // 1.动态加载图片到一个NSArray中
    NSMutableArray *arrayM = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        NSString *imgNames = [NSString stringWithFormat:@"%@_%02d.jpg", imgName, i];
        // imageNamed方法消耗内存过大(缓存)
        //UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"%@_%02d.jpg", imgName, i]];
        //UIImage *img = [UIImage imageNamed:imgNames];
        //
        NSString *path = [[NSBundle mainBundle] pathForResource:imgNames ofType:nil];
        //UIImage *imgCat = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imgName ofType:nil]];
        
        // imageWithContentsOfFile方法用完就释放了,最后一次保留
        UIImage *img = [UIImage imageWithContentsOfFile:path];
        [arrayM addObject:img];
    }
    // 2.设置UIImageView(图片库)的animationImages属性,这个属性中包含的就是所有那些要执行动画的图片
    img.animationImages = arrayM;
    // 3.设置动画持续时间
    img.animationDuration = img.animationImages.count * 0.1;
    // 4.设置动画是否需要重复播放
    img.animationRepeatCount = repeatCount;
    // 5.开启动画
    [img startAnimating];
    // 清空图片集合
    //[self.imageViewCat setAnimationImages:nil];
    
}

+ (void)clearCacheWithImageView:(UIImageView *)img {
    [img setAnimationImages:nil];
}

@end
