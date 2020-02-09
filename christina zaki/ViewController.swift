//
//  ViewController.swift
//  christina zaki
//
//  Created by christina zaki on 1/27/20.
//  Copyright © 2020 christina zaki. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {
   
    
 let URL = "http://bellman-bd.restart-technology.com/api/home"
    @IBOutlet weak var tableView: UITableView!
  //  let TBC = TableViewCell()
  var places = [place]()
    override func viewDidLoad() {
     
        super.viewDidLoad()
       // self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        // Do any additional setup after loading the view.
//        Alamofire.request(
//            URL, method: .get, parameters: nil, encoding: JSONEncoding.default
//            , headers: nil).validate().responseJSON { (res) in
//
//
//                print(res)
//                print("res")
//                if res.result.isSuccess {
//                    print("success")
//                    let  jsonData = res.result.value as? [String: Any]
//                    let data      =  jsonData?["data"] as? [String:Any]
//                    print(data)
//                    let attractions     =  data?["attractions"] as? [[String:Any]]
//                    print(attractions)
//
//                    for placeDictionary in attractions! {
//                        let attract =  place( dictionary:placeDictionary)
//                        self.places.append(attract)
//                        print(attract.name)
//                    }
//                           self.tableView.reloadData()
//                }
//                else {
//                    print("failure")
//                }
//        }
    }

 
}
extension ViewController : UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return   3
    }
 
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   var mycell = UITableViewCell()
    if (indexPath.row == 0){
         let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
                cell.nameOfEvent.text = "Hotspots"
                    cell.imageEvent.image = UIImage(named: "Hotspots")
        
                    print("jjjjjjjj")
      mycell = cell
        
                }
    
    else if  (indexPath.row == 1){
          let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
                    cell.nameOfEvent.text = "Events"
                    cell.imageEvent.image = UIImage(named: "Events")
        mycell = cell
                }
                if (indexPath.row == 2){
                      let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell3", for: indexPath) as! TableViewCell3
                    cell.nameOfEvent.text = "Attractions"
                    cell.imageEvent.image = UIImage(named: "attractions")
        mycell = cell
                }
    return mycell
    
    //        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
//        if (indexPath.row == 0){
//        cell.nameOfEvent.text = "holo"
//            cell.imageEvent.image = UIImage(named: "home")
//
//            print("jjjjjjjj")
//
//
//        }
//        else if  (indexPath.row == 1){
//            cell.nameOfEvent.text = "solo"
//            cell.imageEvent.image = UIImage(named: "searchBar")
//
//        }
//        if (indexPath.row == 2){
//            cell.nameOfEvent.text = "home"
//            cell.imageEvent.image = UIImage(named: "profile")
//
//        }
//
  //   return cell
   }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
        
    }
}
