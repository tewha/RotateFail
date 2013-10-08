#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()

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

@end
