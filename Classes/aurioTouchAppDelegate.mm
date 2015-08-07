/*
 
     File: aurioTouchAppDelegate.mm
 Abstract: n/a
  Version: 2.0
 
 */

#import "aurioTouchAppDelegate.h"
#import "EAGLView.h"

@implementation aurioTouchAppDelegate
@synthesize window;
@synthesize view;

#pragma mark-

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    window = [[UIWindow alloc] initWithFrame:screenBounds];
    UIViewController *myVC = [[UIViewController alloc]initWithNibName:nil bundle:nil];
    myVC.view = view;
    self.window.rootViewController = myVC;
    [myVC release];
    application.idleTimerDisabled = YES;
    [window makeKeyAndVisible];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	//start animation now that we're in the foreground
    view.applicationResignedActive = NO;
    [view startAnimation];
}

- (void)applicationWillResignActive:(UIApplication *)application {
	//stop animation before going into background
    view.applicationResignedActive = YES;
    [view stopAnimation];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)dealloc
{	
    [view release];
	[window release];
	[super dealloc];
}


@end
