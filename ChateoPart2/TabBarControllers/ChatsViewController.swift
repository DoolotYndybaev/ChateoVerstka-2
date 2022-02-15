//
//  ChatsViewController.swift
//  ChateoPart2
//
//  Created by Doolot on 15/2/22.
//

import Foundation
import SnapKit
class ChatsViewController: UIViewController{
    private lazy var storyContainer: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Main Container")
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsView()
        setupViews()
    }
    private func setupViews(){
        view.addSubview(storyContainer)
        storyContainer.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.5)
        }
    }
    private func settingsView(){
        view.backgroundColor = .systemBackground
        
        navigationItem.title = "Chats"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "text.justify.leading"), style: .plain, target: self, action: nil)
    }
}

