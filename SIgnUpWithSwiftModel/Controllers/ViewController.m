//
//  ViewController.m
//  SIgnUpWithSwiftModel
//
//  Created by Tihitinaw Buzuwek on 29/09/2025.
//

#import "ViewController.h"
#import "SIgnUpWithSwiftModel-Swift.h"
#import "ValidationResult.h"
#import "UserFieldValidator.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.userList = [[NSMutableArray alloc] init];
}

- (IBAction)signUp:(id)sender{
    self.customMessage.text=@"";
    UserFieldValidator *userFieldValidator = [UserFieldValidator new];
    
    UserModel *user = [[UserModel alloc] initWithUserName:self.userNameField.text userEmail:self.userEmailField.text userPhone:self.userPhoneField.text userDateOfBirth:self.userDateOfBirthField.text userPassword:self.userPasswordField.text userGender:self.userGenderField.text userOccupation:self.userOccupationField.text userCountry:self.userCountryField.text userCity:self.userCityField.text userStreet:self.userStreetField.text];
    
    ValidationResult *validateResult = [userFieldValidator validateUserFields:user];
                   
    if(!validateResult.isValid){
        self.customMessage.text = validateResult.errorMessage;
        self.customMessage.textColor=[UIColor redColor];
        return;
    }

    
    [self.userList addObject:user];
    self.customMessage.text=@"User Added";
    self.customMessage.textColor=[UIColor blackColor];

    
    
}

@end
