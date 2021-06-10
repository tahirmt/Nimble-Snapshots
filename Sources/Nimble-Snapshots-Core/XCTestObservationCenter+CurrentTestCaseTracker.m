#import "XCTestObservationCenter+CurrentTestCaseTracker.h"

#if SWIFT_PACKAGE
@import Nimble_Snapshots_Swift_Core;
#else
#if __has_include("Nimble_Snapshots-Swift.h")
    #import "Nimble_Snapshots-Swift.h"
#else
    #import <Nimble_Snapshots/Nimble_Snapshots-Swift.h>
#endif
#endif

@implementation XCTestObservationCenter (CurrentTestCaseTracker)

+ (void)load {
    [[self sharedTestObservationCenter] addTestObserver:[CurrentTestCaseTracker sharedInstance]];
}

@end
