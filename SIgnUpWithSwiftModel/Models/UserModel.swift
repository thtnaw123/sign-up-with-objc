//
//  UserModel.swift
//  SIgnUpWithSwiftModel
//
//  Created by Tihitinaw Buzuwek on 29/09/2025.
//

import Foundation

@objcMembers
class UserModel:NSObject {
    var userName: String
    var userEmail: String
    var userPhone: String
    var userDateOfBirth: String
    var userPassword: String
    var userGender: String
    var userOccupation: String
    var userCountry: String
    var userCity: String
    var userStreet: String
    
    init(userName: String,
         userEmail: String,
         userPhone: String,
         userDateOfBirth: String,
         userPassword: String,
         userGender: String,
         userOccupation: String,
         userCountry: String,
         userCity: String,
         userStreet: String) {
        
        self.userName = userName
        self.userEmail = userEmail
        self.userPhone = userPhone
        self.userDateOfBirth = userDateOfBirth
        self.userPassword = userPassword
        self.userGender = userGender
        self.userOccupation = userOccupation
        self.userCountry = userCountry
        self.userCity = userCity
        self.userStreet = userStreet
    }
    
    func descrption() -> String {
           return " name : \(userName) \n email : \(userEmail) \n phone : \(userPhone) \n date of birth : \(userDateOfBirth) \n password : \(userPassword) \n gender : \(userGender) \n occupation : \(userOccupation) \n country : \(userCountry) \n city : \(userCity) \n street : \(userStreet)"
       }
    func getFullName() -> String {
        return "\(userName)"
    }
}


