//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Matthew Linaberry on 9/20/14.
//
//

#import "BNRReminderViewController.h"
@interface BNRReminderViewController()
@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@end

@implementation BNRReminderViewController
- (IBAction) addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    
    NSLog(@"Setting a reminder for %@", date);
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.tabBarItem.title = @"Reminder";
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        
        self.tabBarItem.image = image;
    }
    
    return self;
}
@end
