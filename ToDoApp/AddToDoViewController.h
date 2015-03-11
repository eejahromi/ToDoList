//
//  AddToDoViewController.h
//  ToDoApp
//
//  Created by Ehsan jahromi.
//

#import <UIKit/UIKit.h>

@interface AddToDoViewController : UIViewController
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *itemText;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end
