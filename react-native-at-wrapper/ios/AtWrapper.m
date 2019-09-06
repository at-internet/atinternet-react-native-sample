#import "AtWrapper.h"

#if __has_include(<Tracker/Tracker-Swift.h>)
#import <Tracker/Tracker-Swift.h>
#else
@import Tracker;
#endif

@implementation AtWrapper

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getSdkVersion:(RCTResponseSenderBlock)callback)
{
	callback(@[[NSString stringWithFormat: @"%@", [[ATInternet sharedInstance] defaultTracker].sdkVersion]]);
}

RCT_EXPORT_METHOD(sendScreen:(NSInteger)siteId securedLog:(NSString*)securedLog screenName:(NSString*)screenName callback:(RCTResponseSenderBlock)callback)
{
    Tracker* t = [[ATInternet sharedInstance] defaultTracker];
    [t setSiteId:siteId sync:YES completionHandler:nil];
    [t setSecuredLog:securedLog sync:YES completionHandler:nil];
    [t setSecureModeEnabled:YES sync:YES completionHandler:nil];
    [[t.screens add:screenName] sendView];
    callback(@[@"Done"]);
}

@end
