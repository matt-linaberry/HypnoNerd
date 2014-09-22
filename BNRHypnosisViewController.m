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

- (instancetype) initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.tabBarItem.title = @"Hypnotize";
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = image;
        
        NSMutableArray *colorArray = [[NSMutableArray alloc] init];
        [colorArray addObject:@"Red"];
        [colorArray addObject:@"Blue"];
        [colorArray addObject:@"Green"];
        UISegmentedControl *segmentControl = [[UISegmentedControl alloc] initWithItems:colorArray];
        [segmentControl addTarget:self
                             action:@selector(changeColor:)
                   forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:segmentControl];
    }
    return self;
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"BNRHypnosisViewController did load!");
}

- (void)changeColor:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSLog(@"The Segment controller was touched %d", segmentedControl.selectedSegmentIndex);
    if(segmentedControl.selectedSegmentIndex == 0){
        ((BNRHypnosisView *)self.view).circleColor = [UIColor redColor];
    }
    if(segmentedControl.selectedSegmentIndex == 1){
        ((BNRHypnosisView *)self.view).circleColor = [UIColor greenColor];
    }
    if(segmentedControl.selectedSegmentIndex == 2){
        ((BNRHypnosisView *)self.view).circleColor = [UIColor blueColor];
    }
}
@end
