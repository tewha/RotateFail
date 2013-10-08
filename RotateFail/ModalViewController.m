#import "ModalViewController.h"

@interface ModalViewController ()
@property IBOutlet UIButton *closeButton;
@end

@implementation ModalViewController

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    _closeButton.enabled = UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

@end
