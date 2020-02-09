//
//  cate.swift
//  christina zaki
//
//  Created by christina zaki on 2/1/20.
//  Copyright © 2020 christina zaki. All rights reserved.
//

import Foundation
import UIKit
class cate {
    var name: String
     init(dictionary: [String:Any]) {
        self.name = dictionary["name"] as? String ?? ""
    }
}
