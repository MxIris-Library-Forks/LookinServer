#ifdef SHOULD_COMPILE_LOOKIN_SERVER 

//
//  UILabel+LookinServer.h
//  LookinServer
//
//  Created by Li Kai on 2019/2/26.
//  https://lookin.work
//

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>

@interface UILabel (LookinServer)

@property(nonatomic, assign) CGFloat lks_fontSize;

- (NSString *)lks_fontName;

@end
#endif

#if TARGET_OS_OSX
#endif

#endif /* SHOULD_COMPILE_LOOKIN_SERVER */
