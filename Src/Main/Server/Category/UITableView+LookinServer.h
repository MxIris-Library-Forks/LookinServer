#ifdef SHOULD_COMPILE_LOOKIN_SERVER 

//
//  UITableView+LookinServer.h
//  LookinServer
//
//  Created by Li Kai on 2019/9/5.
//  https://lookin.work
//

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>

@interface UITableView (LookinServer)

- (NSArray<NSNumber *> *)lks_numberOfRows;

@end
#endif

#if TARGET_OS_OSX
#endif

#endif /* SHOULD_COMPILE_LOOKIN_SERVER */
