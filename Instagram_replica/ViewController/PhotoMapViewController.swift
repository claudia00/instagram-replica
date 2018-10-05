//
//  PhotoMapViewController.swift
//  Instagram_replica
//
//  Created by kairi on 9/30/18.
//  Copyright © 2018 kairi. All rights reserved.
//

import UIKit
import Parse

class PhotoMapViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Taking a Picture
        //Instantiate a UIImagePickerCOntroller
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.allowsEditing = true
        vc.sourceType = UIImagePickerControllerSourceType.camera
        self.present(vc, animated: true, completion: nil)
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            vc.sourceType = .camera
        }else{
            print("Camera 🚫 available so we will use photo library instead")
            vc.sourceType = .photoLibrary
        }
    }
//Implement the delegate method
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let originalImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        let editedImage = info[UIImagePickerControllerEditedImage] as! UIImage
        dismiss(animated: true, completion: nil)
    }
    //picking a picture from the camera roll
    //instatiate a UIImagePickerController
//    let vc = UIImagePickerController()
//    vc.delegate = self
//    vc.allowsEditing = true
//    vc.sourceType = UIImagePickerControllerSourceType.photoLibrary
//    self.present(vc, animated: true, completion: nil)
    
    
    
    
}
