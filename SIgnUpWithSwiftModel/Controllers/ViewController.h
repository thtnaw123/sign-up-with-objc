//
//  ViewController.h
//  SIgnUpWithSwiftModel
//
//  Created by Tihitinaw Buzuwek on 29/09/2025.
//

#import <UIKit/UIKit.h>
#import "SIgnUpWithSwiftModel-Swift.h"
#import "ValidationResult.h"


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *userEmailField;

@property (weak, nonatomic) IBOutlet UITextField *userPhoneField;
@property (weak, nonatomic) IBOutlet UITextField *userDateOfBirthField;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordField;

@property (weak, nonatomic) IBOutlet UITextField *userGenderField;
@property (weak, nonatomic) IBOutlet UITextField *userOccupationField;
@property (weak, nonatomic) IBOutlet UITextField *userCountryField;
@property (weak, nonatomic) IBOutlet UITextField *userCityField;
@property (weak, nonatomic) IBOutlet UITextField *userStreetField;

@property (weak, nonatomic) IBOutlet UILabel *customMessage;

@property NSMutableArray <UserModel *>*userList;
@property ValidationResult *validationResult;

- (IBAction)signUp:(id)sender;


@end

