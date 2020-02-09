


//
//  ViewControllerBellMan.swift
//  christina zaki
//
//  Created by christina zaki on 1/30/20.
//  Copyright © 2020 christina zaki. All rights reserved.
//

import UIKit

class ViewControllerBellMan: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
      
        let MainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as!  MainTabController
        
        self.present( MainTabController, animated:false, completion:nil)
    }
    override func viewWillAppear(_ animated: Bool) {
//        let MainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as!  MainTabController
//
//        self.present( MainTabController, animated:false, completion:nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
