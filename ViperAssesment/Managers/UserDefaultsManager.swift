//
//  UserDefaultsManager.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

enum UserDefaultsManager : String {
    case isLoggedIn
    case email
    case name
}



extension UserDefaults{
    //MARK: Check Login

    func setLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsManager.isLoggedIn.rawValue)
        synchronize()
    }

    func isLoggedIn()-> Bool {
        return bool(forKey: UserDefaultsManager.isLoggedIn.rawValue)
    }

    //MARK: Save User Data
    func setEmail(value: String){
        set(value, forKey: UserDefaultsManager.email.rawValue)
        synchronize()
    }

    func setName(value: String){
        set(value, forKey: UserDefaultsManager.name.rawValue)
        synchronize()
    }

    //MARK: Retrieve User Data
    func getEmail() -> String {
        return string(forKey: UserDefaultsManager.email.rawValue)!
    }

    func getName() -> String {
        return string(forKey: UserDefaultsManager.name.rawValue)!
    }

}

