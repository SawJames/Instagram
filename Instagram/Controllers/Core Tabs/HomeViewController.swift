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
    
    private let tableView : UITableView = {
        let tableView = UITableView()
        tableView.register(IGFeedPostTableViewCell.self, forCellReuseIdentifier: IGFeedPostTableViewCell.identifer)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
  
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
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

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IGFeedPostTableViewCell.identifer, for: indexPath) as! IGFeedPostTableViewCell
        return cell
    }
}

