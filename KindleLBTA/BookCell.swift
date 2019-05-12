//
//  BookCell.swift
//  KindleLBTA
//
//  Created by dainis.putans on 09/05/2019.
//  Copyright © 2019 dainis.putans. All rights reserved.
//

import UIKit

class BookCell : UITableViewCell {
    
    var book : Book? {
        didSet {
            coverImageView.image = book?.image
            titleLable.text = book?.title
            authorLabel.text = book?.author
        }
    }
    
    private let coverImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLable : UILabel = {
        let label = UILabel()
        label.text = "This is the text for the title of our book inside of our cell"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let authorLabel : UILabel = {
       let label = UILabel()
        label.text = "This is some author for the book that we have in this row."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // backgroundColor = .yellow
        
        addSubview(coverImageView)
        coverImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        coverImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        coverImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        coverImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(titleLable)
        titleLable.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 8).isActive = true
        titleLable.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        titleLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleLable.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -10).isActive = true
        
        addSubview(authorLabel)
        authorLabel.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 4).isActive = true
        authorLabel.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 8).isActive = true
        authorLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

