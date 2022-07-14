//
//  BaseViewController.swift
//  InstaClone
//
//  Created by Karimov Dilmurod on 14/07/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Method
    func appDelegate()-> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func sceneDelegate()-> SceneDelegate{
        return ((UIApplication.shared.connectedScenes.first!.delegate as? SceneDelegate)!)
    }
    
    
    
    
    // MARK: - Action
    
    
}
