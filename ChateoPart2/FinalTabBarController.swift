//
//  FinalTabBarController.swift
//  ChateoPart2
//
//  Created by Doolot on 15/2/22.
//


import Foundation
import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.viewControllers = setupViewControllers()
    }
    
    private var contactsTabBar: ContactsViewController = {
        
        let contactsTabBar = ContactsViewController()
        let defaultImage = UIImage(systemName: "person.2")
        let selectedImage = UIImage(named: "Contacts")
        
        let tabBarItem = UITabBarItem(
            title: "",
            image: defaultImage,
            selectedImage:selectedImage)
        
        contactsTabBar.tabBarItem = tabBarItem
        return contactsTabBar
    }()
    
    
    private var chatsTabBar: ChatsViewController = {
        
        let chatsTabBar = ChatsViewController()
        let title = "Chats"
        let defaultImage = UIImage(systemName: "message")
        let selectedImage = UIImage(named: "Chats")
        
        let tabBarItem = UITabBarItem(title: "",
                                      image: defaultImage,
                                      selectedImage: selectedImage)
        
        chatsTabBar.tabBarItem = tabBarItem
        chatsTabBar.navigationItem.title = title
        return chatsTabBar
    }()
    
    
    private var moreTabBar: MoreViewController = {
        
        let moreTabBar = MoreViewController()
        let title = "More"
        let defaultImage = UIImage(systemName: "circle.grid.3x3.fill")
        let selectedImage = UIImage(named: "More")
        
        let tabBarItem = UITabBarItem(title: "",
                                      image: defaultImage,
                                      selectedImage: selectedImage)
        
        moreTabBar.tabBarItem = tabBarItem
        moreTabBar.navigationItem.title = title
        return moreTabBar
    }()
    
    private func setupViewControllers() -> [UINavigationController]{
        
        let moviesVC = UINavigationController(rootViewController: contactsTabBar)
        let seriesVC = UINavigationController(rootViewController: chatsTabBar)
        let favoriteVC = UINavigationController(rootViewController: moreTabBar)
        return [moviesVC, seriesVC, favoriteVC]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}
