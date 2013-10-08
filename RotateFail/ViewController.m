#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()
@property IBOutlet UIButton *modalButton;
@end

@implementation ViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqual:@"modal"]) {
        ((ModalViewController *)segue.destinationViewController).doneBlock = ^{
            [self dismissViewControllerAnimated:YES completion:nil];
        };
    }
}


- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    _modalButton.enabled = UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}


@end
