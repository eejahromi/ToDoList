//
//  AddToDoViewController.m
//  ToDoApp
//
//  Created by Ehsan Jahromi.
//

#import "AddToDoViewController.h"

@interface AddToDoViewController ()

@end

@implementation AddToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
    [self.itemText resignFirstResponder];
    
    NSDate *pickerDate = [self.datePicker date];
    
    // schedule the notification
    UILocalNotification *localNotification = [[UILocalNotification alloc]init];
    localNotification.fireDate = pickerDate;
    localNotification.alertBody = self.itemText.text;
    localNotification.alertAction = @"Show me the item";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    // update little number icon that appears for notification
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
    [[UIApplication sharedApplication]scheduleLocalNotification:localNotification];
    
    // request to reload table view data
    [[NSNotificationCenter defaultCenter]postNotificationName:@"reloadData" object:self];
    
    // dismiss the view controller
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
@end
