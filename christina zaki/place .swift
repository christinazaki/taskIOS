
//
//  place .swift
//  christina zaki
//
//  Created by christina zaki on 1/30/20.
//  Copyright © 2020 christina zaki. All rights reserved.
//

import Foundation
import UIKit
class place {
    var name: String
    
    var categories : [[String:Any]]
   
   // var imageUrl : String
     var imageUrl : String
    var id : Int
    //[[String]:Any]
    init(dictionary: [String:Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.categories = dictionary["categories"] as? [[String:Any]] ?? [[:]]
        self.imageUrl = dictionary["photos"] as? String ?? ""
        
        
        
//        self.imageUrl = "https://image.tmdb.org/t/p/original" + (dictionary["poster_path"] as? String ?? "")
        
        
        
        self.id = dictionary["id"] as? Int ?? 0
    }
}

