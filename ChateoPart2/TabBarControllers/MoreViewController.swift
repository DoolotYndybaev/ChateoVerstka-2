//
//  MoreViewController.swift
//  ChateoPart2
//
//  Created by Doolot on 15/2/22.
//

import Foundation
import UIKit
class MoreViewController: UIViewController{
    private lazy var storyContainer: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "More Container")
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
            make.height.equalToSuperview().multipliedBy(0.6)
        }
    }
    private func settingsView(){
        view.backgroundColor = .systemBackground
        
        navigationItem.title = "More"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

