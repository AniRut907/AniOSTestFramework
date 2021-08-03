//
//  EmailValidator.swift
//  AniOSTestFramework
//
//  Created by Aniket Lokhande on 03/08/21.
//

import Foundation

public class EmailValidator{
    public init(){
        print("successfully intiated")
    }
    
    public func validateEmailId(emailString:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailString)
    }
}
