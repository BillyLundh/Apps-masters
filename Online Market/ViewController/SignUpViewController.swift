//
//  SignUpViewController.swift
//  Online Market
//
//  Created by Mohamad on 2020-10-07.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    var uid :String = "";


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signInButton(_ sender: Any) {
        if emailTF.text != nil && passwordTF.text != nil && userNameTF.text != nil{
            Auth.auth().createUser(withEmail: emailTF.text!, password: passwordTF.text!, completion: { (result, error) in
                if error != nil {
                    print("there was an error", error!)
                } else {
                    self.uid = (result?.user.uid)!
                    
                    print("Works!!!!!!", self.uid)
                }
            })
            
        }
    }
    

}
