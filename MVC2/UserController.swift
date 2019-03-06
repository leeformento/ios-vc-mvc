//
//  UserController.swift
//  MVC2
//
//  Created by Lee Formento on 3/6/19.
//  Copyright © 2019 Lee Formento. All rights reserved.
//

import Foundation


class UserController {
    
    init() {
        createUser(with: "Bob", age: "30", bio: "Ako si Bob")
    }
    
    
    // CRUD
    
 
    // Create - Make instances of model object and put them in Read to be able to be seen by rest of the app
    
    func createUser(with username: String, age: String, bio: String) {
        
        let user = User(username: username, age: age, bio: bio)
        users.append(user)
        print(users.count)
    }
    
    // Update
    //    func update(user: User, bio: String)
    
    // Read - Allows the app to view instances of your model
    var users: [User] = []
    
}
