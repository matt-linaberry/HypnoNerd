//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Matthew Linaberry on 9/20/14.
//
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

-(void) loadView
{
    // create a view!
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    self.view = backgroundView;
}

@end
