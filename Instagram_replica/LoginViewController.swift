//
//  LoginViewController.swift
//  Instagram_replica
//
//  Created by kairi on 9/28/18.
//  Copyright © 2018 kairi. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        func loginUser() {
            
            let username = usernameField.text ?? ""
            let password = passwordField.text ?? ""
            
            PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
                if let error = error {
                    print("User log in failed: \(error.localizedDescription)")
                } else {
                    print("User logged in successfully")
                    // display view controller that needs to shown after successful login
                }
            }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        
        func registerUser(){
            //initialize a user object
        let newUser = PFUser()
        
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        //newUser.signUpInBackground { (success: Bool, error: NSError) in
            newUser.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error {
                print(error.localizedDescription)

            }else{
                print("Yay, created a user!")
            }
            }
            }
    }
}