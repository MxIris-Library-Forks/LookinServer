#ifdef SHOULD_COMPILE_LOOKIN_SERVER 

//
//  UILabel+LookinServer.h
//  LookinServer
//
//  Created by Li Kai on 2019/2/26.
//  https://lookin.work
//

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE

#import <UIKit/UIKit.h>

@interface UILabel (LookinServer)

@property(nonatomic, assign) CGFloat lks_fontSize;

- (NSString *)lks_fontName;

@end

#endif

#endif /* SHOULD_COMPILE_LOOKIN_SERVER */
