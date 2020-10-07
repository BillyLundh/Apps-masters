//
//  LogInViewController.swift
//  Online Market
//
//  Created by Mohamad on 2020-10-07.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {
    
    
    var uid:String = ""
    
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logInClick(_ sender: Any) {
        
        if emailTF.text != nil && passwordTF.text != nil{
            Auth.auth().signIn(withEmail: emailTF.text!, password: passwordTF.text!, completion: { (result, error) in
                if error != nil {
                    print("there was an error", error!)
                } else {
                    self.uid = (result?.user.uid)!
                }
            })
        }
    }
    

}
