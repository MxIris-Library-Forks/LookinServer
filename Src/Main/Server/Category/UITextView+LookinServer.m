#ifdef SHOULD_COMPILE_LOOKIN_SERVER 

//
//  UITextView+LookinServer.m
//  LookinServer
//
//  Created by Li Kai on 2019/2/26.
//  https://lookin.work
//

#if TARGET_OS_IPHONE
#import "UITextView+LookinServer.h"

@implementation UITextView (LookinServer)

- (CGFloat)lks_fontSize {
    return self.font.pointSize;
}
- (void)setLks_fontSize:(CGFloat)lks_fontSize {
    UIFont *font = [self.font fontWithSize:lks_fontSize];
    self.font = font;
}

- (NSString *)lks_fontName {
    return self.font.fontName;
}

@end
#endif

#if TARGET_OS_OSX
#endif

#endif /* SHOULD_COMPILE_LOOKIN_SERVER */
