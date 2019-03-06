//
//  ViewController.swift
//  MVC2
//
//  Created by Lee Formento on 3/6/19.
//  Copyright © 2019 Lee Formento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateViews()
    }
    
    func updateViews() {
        guard let firstUser = userController.users.first else { return }
        usernameTextField.text = firstUser.username
        ageTextFields.text = firstUser.age
        bioTextField.text = firstUser.bio
    }
    
    
    

    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let username = usernameTextField.text,
            let age = ageTextFields.text,
            let bio = bioTextField.text else { return }
        
        userController.createUser(with: username, age:age, bio:bio)
    }
    let userController = UserController()

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBAction func ageTextField(_ sender: Any) {
    }
    @IBOutlet weak var ageTextFields: UITextField!
    @IBOutlet weak var bioTextField: UITextField!
}

