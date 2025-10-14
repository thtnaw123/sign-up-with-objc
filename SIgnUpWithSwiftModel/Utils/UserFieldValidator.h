//
//  UserFieldValidator.h
//  SIgnUpWithSwiftModel
//
//  Created by Tihitinaw Buzuwek on 30/09/2025.
//


#import <Foundation/Foundation.h>
#import "ValidationResult.h"
#import "SIgnUpWithSwiftModel-Swift.h"



@interface UserFieldValidator : NSObject
- (ValidationResult *)validateUserFields:(UserModel *) user;
@end



