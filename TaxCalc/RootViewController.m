//
//  RootViewController.m
//  TaxCalc
//
//  Created by Francis Bato on 9/13/15.
//  Copyright (c) 2015 Francis Bato. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgView;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;
@property double tax;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _caTax = 7.5/100;
    _nyTax = 9.25/100;
    _chiTax = 4.5/100;
    _tax = _caTax;
}
- (IBAction)onButtonCalculateTapped:(id)sender {
    float total = [[_priceTextField text] doubleValue] * _tax;
    NSLog(@"%f",total);
    _resultLabel.text = [NSString stringWithFormat:@"$%.2f",total];

}
- (IBAction)onTaxTapped:(id)sender {
    if(self.segmentedControl.selectedSegmentIndex == 0)            // Checking which segment is selected using the segment index value
    {
        UIImage *img1 = [UIImage imageNamed:@"gold_bg.png"];
        [_bgView setImage:img1];
        self.view.backgroundColor = [UIColor redColor];          // Change the background color to red
        _tax = _caTax;

    }
    else if(self.segmentedControl.selectedSegmentIndex == 1)
        {
            UIImage *img1 = [UIImage imageNamed:@"green_bg.png"];
            [_bgView setImage:img1];
            self.view.backgroundColor = [UIColor greenColor];
            _tax = _chiTax;
        }
    else if(self.segmentedControl.selectedSegmentIndex == 2)
                
            {
                UIImage *img1 = [UIImage imageNamed:@"purple_bg.png"];
                [_bgView setImage:img1];
                self.view.backgroundColor = [UIColor blueColor];
                _tax = _nyTax;
            }
}


@end
