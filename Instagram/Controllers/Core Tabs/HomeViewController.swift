//
//  ViewController.swift
//  Instagram
//
//  Created by saw Tarmalar on 16/08/2020.
//  Copyright © 2020 saw Tarmalar. All rights reserved.
//

import UIKit
import FirebaseAuth


class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         handleNotAuthenticated()
            
//        do{
//            try Auth.auth().signOut()
//        }
//        catch{
//            print("failed to sign out")
//        }
    }
    
    
    private func handleNotAuthenticated(){
        //check auth status
        if Auth.auth().currentUser == nil {
            //show log in
            let loginVc = LoginViewController()
            loginVc.modalPresentationStyle = .fullScreen
            present(loginVc, animated: false)
        }
    }

}

