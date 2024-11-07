#ifdef SHOULD_COMPILE_LOOKIN_SERVER 

//
//  Image+Lookin.m
//  LookinShared
//
//  Created by 李凯 on 2022/4/2.
//

#import "Image+Lookin.h"

#if TARGET_OS_IPHONE || TARGET_OS_MACCATALYST

#elif TARGET_OS_MAC
#import <AppKit/AppKit.h>
@implementation NSImage (LookinClient)

- (NSData *)lookin_data {
    return [self TIFFRepresentation];
}

@end

#endif

#endif /* SHOULD_COMPILE_LOOKIN_SERVER */
