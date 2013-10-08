#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (IBAction)tapClose:(id)sender {
    if (_doneBlock) _doneBlock();
}

@end
