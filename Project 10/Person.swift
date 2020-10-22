//
//  Person.swift
//  Project 10
//
//  Created by Tal Spektor on 07/06/2020.
//  Copyright © 2020 Tal Spektor. All rights reserved.
//

import UIKit

class Person: Codable {
   
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String ?? ""
        image = coder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
           coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }

}
