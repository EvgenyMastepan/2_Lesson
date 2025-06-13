//
//  MainTabBarControllerViewController.swift
//  2 Lesson
//
//  Created by Evgeny Mastepan on 12.06.2025.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        customizeTabBar()
        
    }
    
    private func setupTabs() {
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        
        firstVC.tabBarItem = UITabBarItem(
            title: "Login",
            image: UIImage(systemName: "document.circle.fill"),
            tag: 0
        )
        secondVC.tabBarItem = UITabBarItem(
            title: "Password",
            image: UIImage(systemName: "lock.circle.fill"),
            tag: 1
        )
        thirdVC.tabBarItem = UITabBarItem(
            title: "Person",
            image: UIImage(systemName: "person.bust.circle.fill"),
            tag: 2
        )
        let nav1 = UINavigationController(rootViewController: firstVC)
        let nav2 = UINavigationController(rootViewController: secondVC)
        let nav3 = UINavigationController(rootViewController: thirdVC)

        setViewControllers([nav1, nav2, nav3], animated: true)
    }
    
    private func customizeTabBar() {
          tabBar.tintColor = .systemBlue
          tabBar.unselectedItemTintColor = .gray
          tabBar.backgroundColor = .systemBackground
      }
}
