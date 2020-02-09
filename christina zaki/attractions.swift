

import Foundation
import UIKit
class attractions {
    var name: String
    
    var categories : [String:Any]
    
    // var imageUrl : String
    var photos : [String]
    var id : Int
    //[[String]:Any]
    init(dictionary: [String:Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.categories = dictionary["categories"] as? [String:Any] ?? [:]
        self.photos = dictionary["photos"] as? [String] ?? []
        
        
        
        //        self.imageUrl = "https://image.tmdb.org/t/p/original" + (dictionary["poster_path"] as? String ?? "")
        
        
        
        self.id = dictionary["id"] as? Int ?? 0
    }
}
