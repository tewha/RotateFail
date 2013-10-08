#import "ModalViewController.h"

@interface ModalViewController ()
@property IBOutlet UIButton *closeButton;
@end

@implementation ModalViewController

- (IBAction)tapClose:(id)sender {
    if (_doneBlock) _doneBlock();
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    _closeButton.enabled = UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

@end
