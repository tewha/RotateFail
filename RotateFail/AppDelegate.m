#import "AppDelegate.h"
#import "JSSlidingViewController.h"

@interface AppDelegate() <JSSlidingViewControllerDelegate>

@end

@implementation AppDelegate

- (NSUInteger)supportedInterfaceOrientationsForSlidingViewController:(JSSlidingViewController *)viewController {
    return UIInterfaceOrientationMaskAllButUpsideDown;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Insert JSSlidingViewController as root view controller
    JSSlidingViewController *slidingViewController = [[JSSlidingViewController alloc] initWithFrontViewController:self.window.rootViewController backViewController:[[UIViewController alloc] init]];
    slidingViewController.delegate = self;
    self.window.rootViewController = slidingViewController;
    return YES;
}
							
@end
