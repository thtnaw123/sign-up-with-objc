//
//  Validator.h
//  SIgnUpWithSwiftModel
//
//  Created by Tihitinaw Buzuwek on 29/09/2025.
//

#import <Foundation/Foundation.h>
@interface Validator:NSObject

- (BOOL) checkIfEmpty:(NSString *) input;
- (BOOL) validatePhoneNumber:(NSString *) input;
- (BOOL) checkIfOnlyNumber:(NSString *) input;
@end




