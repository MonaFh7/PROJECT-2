//
//  User.swift
//  HomeDesignProject2
//
//  Created by Monafh on 08/04/1443 AH.

import Foundation

enum ErrorUser: Error {
    case accountIsBlocked
}
// create class for User information ...
class User {
    var nickName: String
    var Email: String
    var PassWord : String
    var age: Int
    var phonNumber : Int
    var Address : String
    var isBlocked : Bool
    
    
    init(nickName : String, Email: String , age: Int , phonNumber : Int , Address : String , isBlocked : Bool , PassWord : String ){
        self.nickName = nickName
        self.Email = Email
        self.age = age
        self.phonNumber = phonNumber
        self.Address = Address
        self.isBlocked = isBlocked
        self.PassWord = PassWord
    }
    
    var description: String {
        
        return "❖ My name is : \(nickName) , And my E-mail : \(Email) ,And my age : \(age) , I living in : \(Address)"
        
    }
    
}

