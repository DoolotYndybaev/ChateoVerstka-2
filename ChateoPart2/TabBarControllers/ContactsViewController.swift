//
//  ContactsViewController.swift
//  ChateoPart2
//
//  Created by Doolot on 15/2/22.
//

import Foundation
import UIKit
import SnapKit
class ContactsViewController: UIViewController{
    
    private lazy var contactList: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Contact List")
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsView()
        setupViews()
    }
    private func setupViews(){
        view.addSubview(contactList)
        contactList.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
        }
    }
    private func settingsView(){
        view.backgroundColor = .systemBackground
        
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: nil)
    }
}
