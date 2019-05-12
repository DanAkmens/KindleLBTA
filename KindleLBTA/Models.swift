//
//  Models.swift
//  KindleLBTA
//
//  Created by dainis.putans on 04/05/2019.
//  Copyright © 2019 dainis.putans. All rights reserved.
//

import UIKit

class Book {
    
    let title : String
    let author : String
    let image: UIImage 
    let pages : [Page]
    
    init(title: String, author: String, image: UIImage, pages: [Page]) {
        self.title = title
        self.author = author
        self.image = image
        self.pages = pages
    }
}

class Page {
    
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}
