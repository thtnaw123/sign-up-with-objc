//
//  UserFieldValidator.m
//  SIgnUpWithSwiftModel
//
//  Created by Tihitinaw Buzuwek on 30/09/2025.
//

#import <Foundation/Foundation.h>
#import "UserFieldValidator.h"
#import "Validator.h"
#import "ValidationResult.h"

@implementation UserFieldValidator

- (ValidationResult *)validateUserFields:(UserModel *) user {
    
    Validator *validator = [Validator new];
    ValidationResult *validationResult = [ValidationResult new];
    
    
    switch ([validator checkIfEmpty: (user.userName)]){
        case true:
            NSLog(@"user name is ");
    }
        
   
        if([validator checkIfEmpty: (user.userName)]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"name is required";
            return validationResult;
        }

        
        if([validator checkIfEmpty: (user.userEmail)]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"email is required";
            return validationResult;
        }
    
        if([validator checkIfEmpty: (user.userPhone)]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"phone is required";
            return validationResult;
        }
    
        if([validator validatePhoneNumber:(user.userPhone)]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"phone number must be 12 digit";
            return validationResult;
        }
    
        if([validator checkIfEmpty: (user.userDateOfBirth)]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"date of birth is required";
            return validationResult;
        }
    
        if([validator checkIfEmpty: user.userPassword]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"password is required";
            return validationResult;
        }
        
        if([validator checkIfEmpty: user.userGender]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"gender is required";
            return validationResult;
        }
        
        if( [validator checkIfEmpty: user.userOccupation]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"occupation is required";
            return validationResult;
        }
        
        if( [validator checkIfEmpty: user.userCountry]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"country is required";
            return validationResult;
        }

        if( [validator checkIfEmpty: user.userCity]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"city is required";
            return validationResult;
        }
    
        if( [validator checkIfEmpty: user.userStreet]){
            validationResult.isValid=NO;
            validationResult.errorMessage= @"street is required";
            return validationResult;
        }
        
     validationResult.isValid=YES;
     return validationResult;
       
}

@end

