//
//  LoginViewController.swift
//  Instagram_replica
//
//  Created by kairi on 9/28/18.
//  Copyright © 2018 kairi. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController, UINavigationControllerDelegate {
    //UIViewController, UIImagePickerController
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
       loginUser()
    }
    
    func loginUser() {
        
        let username = usernameField.text ?? ""
        let password = passwordField.text ?? ""
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
            if let error = error {
                
                print("User log in failed: \(error.localizedDescription)")
            }
                //                if error?.code == 202{
                //                    print("Username is taken")
            else {
                print("User logged in successfully")
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                
                // display view controller that needs to shown after successful login
            }
        }
    }
    
//            func Login(){
//                var user = PFUser()
//                user.username = usernameField.text!
//                user.password = passwordField.text!
//                PFUser.logInWithUsername(inBackground: usernameField.text!, password: passwordField.text!) { (User: PFUser?, Error: Error?) in
//                    if Error == nil{
//                        dispatch_get_main_queue().async(){
//                            var Storyboard = UIStoryboard(name: "Main", bundle: nil)
//
//                        }
                  //  }
               // }
           // }
    
    
    
    @IBAction func onSignUp(_ sender: Any) {
            
//        registerUser()
//
//    }
       // func registerUser(){
            //initialize a user object
                
        let newUser = PFUser()
        
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        //newUser.signUpInBackground { (success: Bool, error: NSError) in
                newUser.signUpInBackground { (success: Bool, error: Error?) in
//                    if success {
//                        print("Yay, created a user!")
//
//                    }else{
//                        print(error?.localizedDescription)
//                    }
//                }
//        }
                if let error = error {
                print(error.localizedDescription)

            }else{
                print("Yay, created a user!")
                //self.performSegue(withIdentifier: "loginSegue", sender: nil)
                self.dismiss(animated: true, completion: nil)
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                }
                }
            }
        }
