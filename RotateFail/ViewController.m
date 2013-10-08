#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()
@property IBOutlet UIButton *modalButton;
@end

@implementation ViewController

- (IBAction)unwindFromModalViewController:(UIStoryboardSegue *)unwindSegue {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    _modalButton.enabled = UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}


@end
