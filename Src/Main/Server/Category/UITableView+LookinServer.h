#ifdef SHOULD_COMPILE_LOOKIN_SERVER 

//
//  UITableView+LookinServer.h
//  LookinServer
//
//  Created by Li Kai on 2019/9/5.
//  https://lookin.work
//

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>

@interface UITableView (LookinServer)

- (NSArray<NSNumber *> *)lks_numberOfRows;

@end
#endif

#endif /* SHOULD_COMPILE_LOOKIN_SERVER */
