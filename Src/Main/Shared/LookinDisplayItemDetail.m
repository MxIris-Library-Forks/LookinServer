#ifdef SHOULD_COMPILE_LOOKIN_SERVER 

//
//  LookinDisplayItemDetail.m
//  Lookin
//
//  Created by Li Kai on 2019/2/19.
//  https://lookin.work
//

#import "LookinDisplayItemDetail.h"
#import "Image+Lookin.h"

#if TARGET_OS_IPHONE || TARGET_OS_MACCATALYST
#import "UIImage+LookinServer.h"
#endif

@implementation LookinDisplayItemDetail

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:@(self.displayItemOid) forKey:@"displayItemOid"];
#if TARGET_OS_IPHONE
    [aCoder encodeObject:self.groupScreenshot.lookin_data forKey:@"groupScreenshot"];
    [aCoder encodeObject:self.soloScreenshot.lookin_data forKey:@"soloScreenshot"];
#endif
#if TARGET_OS_OSX
    
    
    [aCoder encodeObject:[NSKeyedArchiver archivedDataWithRootObject:self.groupScreenshot requiringSecureCoding:YES error:nil] forKey:@"groupScreenshot"];
    [aCoder encodeObject:[NSKeyedArchiver archivedDataWithRootObject:self.soloScreenshot requiringSecureCoding:YES error:nil] forKey:@"soloScreenshot"];
#endif
    [aCoder encodeObject:self.frameValue forKey:@"frameValue"];
    [aCoder encodeObject:self.boundsValue forKey:@"boundsValue"];
    [aCoder encodeObject:self.hiddenValue forKey:@"hiddenValue"];
    [aCoder encodeObject:self.alphaValue forKey:@"alphaValue"];
    [aCoder encodeObject:self.attributesGroupList forKey:@"attributesGroupList"];
    [aCoder encodeObject:self.customAttrGroupList forKey:@"customAttrGroupList"];
    [aCoder encodeObject:self.customDisplayTitle forKey:@"customDisplayTitle"];
    [aCoder encodeObject:self.danceUISource forKey:@"danceUISource"];
    [aCoder encodeInteger:self.failureCode forKey:@"failureCode"];
    if (self.subitems) {
        [aCoder encodeObject:self.subitems forKey:@"subitems"];
    }
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.displayItemOid = [[aDecoder decodeObjectForKey:@"displayItemOid"] unsignedLongValue];
#if TARGET_OS_IPHONE
        self.groupScreenshot = [[LookinImage alloc] initWithData:[aDecoder decodeObjectForKey:@"groupScreenshot"]];
        self.soloScreenshot = [[LookinImage alloc] initWithData:[aDecoder decodeObjectForKey:@"soloScreenshot"]];
#endif
#if TARGET_OS_OSX
        self.groupScreenshot = [NSKeyedUnarchiver unarchivedObjectOfClass:[NSImage class] fromData:[aDecoder decodeObjectForKey:@"groupScreenshot"] error:nil];
        self.soloScreenshot = [NSKeyedUnarchiver unarchivedObjectOfClass:[NSImage class] fromData:[aDecoder decodeObjectForKey:@"soloScreenshot"] error:nil];
#endif
        self.frameValue = [aDecoder decodeObjectForKey:@"frameValue"];
        self.boundsValue = [aDecoder decodeObjectForKey:@"boundsValue"];
        self.hiddenValue = [aDecoder decodeObjectForKey:@"hiddenValue"];
        self.alphaValue = [aDecoder decodeObjectForKey:@"alphaValue"];
        self.attributesGroupList = [aDecoder decodeObjectForKey:@"attributesGroupList"];
        self.customAttrGroupList = [aDecoder decodeObjectForKey:@"customAttrGroupList"];
        self.customDisplayTitle = [aDecoder decodeObjectForKey:@"customDisplayTitle"];
        self.danceUISource = [aDecoder decodeObjectForKey:@"danceUISource"];
        
        if ([aDecoder containsValueForKey:@"failureCode"]) {
            self.failureCode = [aDecoder decodeIntegerForKey:@"failureCode"];
        } else {
            self.failureCode = 0;
        }
        
        if ([aDecoder containsValueForKey:@"subitems"]) {
            self.subitems = [aDecoder decodeObjectForKey:@"subitems"];
        }
    }
    return self;
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

@end

#endif /* SHOULD_COMPILE_LOOKIN_SERVER */
