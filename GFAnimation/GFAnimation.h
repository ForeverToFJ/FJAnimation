//
//  GFAnimation.h
//  BLE
//
//  Created by  高帆 on 16/4/5.
//  Copyright © 2016年  高帆. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GFAnimation : NSObject

/**
 *  开始动画
 */
+ (void)starAnimatingWithImageView:(UIImageView *)img   //
                          withRepeatCount:(int)repeatCount        // 重复次数  0为无限重复
                                   withCount:(int)count                 // 图片数量
                              withImgName:(NSString *)imgName;  // 图片前缀名

/**
 *  结束动画并清理缓存
 */
+ (void)clearCacheWithImageView:(UIImageView *)img;

@end
