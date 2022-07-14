//
//  SignInViewController.swift
//  InstaClone
//
//  Created by Karimov Dilmurod on 14/07/22.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    // MARK: - Method
    func callSignedUpController(){
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
    
    // MARK: - Action

    @IBAction func OnSignIn(_ sender: Any) {
        sceneDelegate().callHomeController()
    }
    

    @IBAction func OnSignUp(_ sender: Any) {
        callSignedUpController()
    }
}
