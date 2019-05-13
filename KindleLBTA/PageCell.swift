//
//  PageCell.swift
//  KindleLBTA
//
//  Created by dainis.putans on 13/05/2019.
//  Copyright © 2019 dainis.putans. All rights reserved.
//

import UIKit

class PageCell : UICollectionViewCell {
    
    let textLabel : UILabel = {
       
        let label = UILabel()
        label.text = "Some Text For Our Label Some Text For Our Label Some Text For Our Label Some Text For Our LabelSome Text For Our LabelSome Text For Our Label Some Text For Our LabelSome Text For Our LabelSome Text For Our Label"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // backgroundColor = .yellow
        
        addSubview(textLabel)
        // textLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        
        textLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        textLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
