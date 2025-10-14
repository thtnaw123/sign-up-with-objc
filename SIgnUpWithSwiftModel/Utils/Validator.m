//
//  Validator.m
//  SIgnUpWithSwiftModel
//
//  Created by Tihitinaw Buzuwek on 29/09/2025.
//

#import <Foundation/Foundation.h>
#import "Validator.h"

@implementation Validator:NSObject

- (BOOL) checkIfEmpty:(NSString *)input{
    if(input == nil || input.length ==0){
        return YES;
    }
    return NO;
}

-(BOOL) validatePhoneNumber:(NSString *) phone{
    NSCharacterSet *nonDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];

    if ([phone rangeOfCharacterFromSet:nonDigits].location == NSNotFound && phone.length == 12) {
        return NO;
    }
    return YES;
}

- (BOOL) checkIfOnlyNumber:(NSString *) input{
    NSCharacterSet *nonDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];

    if ([input rangeOfCharacterFromSet:nonDigits].location == NSNotFound) {
        return NO;
    }
    return YES;
}

@end
