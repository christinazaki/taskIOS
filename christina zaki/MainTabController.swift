//
//  MainTabController.swift
//  christina zaki
//
//  Created by christina zaki on 1/29/20.
//  Copyright © 2020 christina zaki. All rights reserved.
//

import Foundation
import UIKit
class MainTabController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundtabView: UIImageView = UIImageView(image: UIImage(named: "background tab"))
      

        // image remove el border image
       tabBar.frame.size.height = self.view.frame.height * 0.1
      tabBar.frame.size.width = self.view.frame.width
   
        backgroundtabView.frame = self.tabBar.bounds
        self.tabBar.addSubview(backgroundtabView)
    
     self.tabBar.clipsToBounds = true // remove line
        backgroundtabView.contentMode = .scaleAspectFill
      // postion for items
       self.tabBar.itemPositioning = .centered
   // animated button
        
 
        self.selectedViewController  = self.viewControllers?[0]
        var homeSelectImage: UIImage! = UIImage(named: "home")?.withRenderingMode(.alwaysOriginal)
         var homeImage: UIImage! = UIImage(named: "greyHome")?.withRenderingMode(.alwaysOriginal)
        (self.tabBar.items![0] as! UITabBarItem ).selectedImage = homeSelectImage
        (self.tabBar.items![0] as! UITabBarItem ).image = homeImage
        var searchBarSelectImage: UIImage! = UIImage(named: "searchBar")?.withRenderingMode(.alwaysOriginal)
        var searchBarImage: UIImage! = UIImage(named: "greySearhBar")?.withRenderingMode(.alwaysOriginal)
        (self.tabBar.items![1] as! UITabBarItem ).selectedImage = searchBarSelectImage
        (self.tabBar.items![1] as! UITabBarItem ).image = searchBarImage
        
        
        
 var bellManImage: UIImage! = UIImage(named: "bellMan")?.withRenderingMode(.alwaysOriginal)
        (self.tabBar.items![2] as! UITabBarItem ).image = bellManImage
          (self.tabBar.items![2] as! UITabBarItem ).selectedImage = bellManImage
        
        
        
        
        var trophySelectImage: UIImage! = UIImage(named: "trophy")?.withRenderingMode(.alwaysOriginal)
        var trophyImage: UIImage! = UIImage(named: "greyTrophy")?.withRenderingMode(.alwaysOriginal)
        (self.tabBar.items![3] as! UITabBarItem ).selectedImage = trophySelectImage
        (self.tabBar.items![3] as! UITabBarItem ).image = trophyImage
        
        var profileSelectImage: UIImage! = UIImage(named: "profile")?.withRenderingMode(.alwaysOriginal)
        var profileImage: UIImage! = UIImage(named: "greyProfile")?.withRenderingMode(.alwaysOriginal)
        (self.tabBar.items![4] as! UITabBarItem ).selectedImage = profileSelectImage
        (self.tabBar.items![4] as! UITabBarItem ).image = profileImage
        
    
        
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag  {
        case 0:
            print("home")
//            var homeSelectImage: UIImage! = UIImage(named: "home")?.withRenderingMode(.alwaysOriginal)
//
//            (self.tabBar.items![0] as! UITabBarItem ).selectedImage = homeSelectImage


            break
        case 1:
           print("search")
//           var searchBarSelectImage: UIImage! = UIImage(named: "searchBar")?.withRenderingMode(.alwaysOriginal)
//
//           (self.tabBar.items![1] as! UITabBarItem ).selectedImage = searchBarSelectImage
            break
        case 2:
            print("bellman")
              self.dismiss(animated: false, completion: nil)
//            var bellManImage: UIImage! = UIImage(named: "bellMan")?.withRenderingMode(.alwaysOriginal)
//            (self.tabBar.items![2] as! UITabBarItem ).image = bellManImage
//            (self.tabBar.items![2] as! UITabBarItem ).selectedImage = bellManImage
//            var homeSelectImage: UIImage! = UIImage(named: "home")?.withRenderingMode(.alwaysOriginal)
            
//            (self.tabBar.items![0] as! UITabBarItem ).selectedImage = homeSelectImage
            break
        case 3:
            print("trophy")
//            var trophySelectImage: UIImage! = UIImage(named: "trophy")?.withRenderingMode(.alwaysOriginal)
//
//            (self.tabBar.items![3] as! UITabBarItem ).selectedImage = trophySelectImage
            break
        case 4:
            print("profile")
//            var profileSelectImage: UIImage! = UIImage(named: "profile")?.withRenderingMode(.alwaysOriginal)
//
//            (self.tabBar.items![4] as! UITabBarItem ).selectedImage = profileSelectImage
            break
        default:
            
            break
        }
    }

}

