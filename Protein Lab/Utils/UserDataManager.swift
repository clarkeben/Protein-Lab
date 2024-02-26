//
//  UserDataManager.swift
//  Protein Lab
//
//  Created by Ben Clarke on 26/02/2024.
//

import Foundation

class UserDataManager {
    private let userDefaultsKey = K.UserDefaultsKeys.user
    
    func saveUserData(_ userData: UserData) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(userData) {
            UserDefaults.standard.set(encoded, forKey: userDefaultsKey)
        }
    }
    
    func loadUserData() -> UserData? {
        let userDefaults = UserDefaults.standard
        if let savedUserData = userDefaults.object(forKey: userDefaultsKey) as? Data {
            let decoder = JSONDecoder()
            if let loadedUserData = try? decoder.decode(UserData.self, from: savedUserData) {
                return loadedUserData
            }
        }
        return nil
    }
}
