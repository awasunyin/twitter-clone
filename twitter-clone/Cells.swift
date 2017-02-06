//
//  Cells.swift
//  twitter-clone
//
//  Created by Haohua Sun Yin on 6/2/17.
//  Copyright © 2017 Awa Sun Yin. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .blue
    }
}

class UserFooter: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .green
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        
        //dequeing, redering, setting item in the cell
        didSet {
            //nameLabel.text = datasourceItem as? String
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Test test test"
        return label
    }()
    
    let profileImageView: UIImageView = {
    
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView

    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@username"
        label.backgroundColor = .purple
        return label
    }()
    
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
    }
}