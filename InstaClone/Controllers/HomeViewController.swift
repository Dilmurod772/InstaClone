//
//  HomeViewController.swift
//  InstaClone
//
//  Created by Karimov Dilmurod on 14/07/22.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var items : Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
        
        
    }


    // MARK: - Method
    
    func initViews(){
        setNavigationBar()
        tableView.delegate = self
        tableView.dataSource = self
        
        items.append(Post(fullname: "Sherzod Shermatov", user_img: "im_person1", post_img1: "im_post1", post_img2: "im_post2"))
        items.append(Post(fullname: "Malika Xusinova", user_img: "im_person2", post_img1: "im_post2", post_img2: "im_post1"))
        items.append(Post(fullname: "Ravshan Karimov", user_img: "im_person1", post_img1: "im_post1", post_img2: "im_post2"))
    }
    
    func setNavigationBar(){
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_message")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
    }
    
    @objc func leftTapped(){
        
    }
    @objc func rightTapped(){
        
    }
    
    
    
    // MARK: - Action
    
    
    
    
    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.profileImageView.image = UIImage(named: item.user_img!)
        cell.postImageView1.image = UIImage(named: item.post_img1!)
        cell.postImageView2.image = UIImage(named: item.post_img2!)
        cell.fullnameLabel.text = item.fullname
        
        
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
}
