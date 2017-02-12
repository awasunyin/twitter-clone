//
//  Cells.swift
//  twitter-clone
//
//  Created by Haohua Sun Yin on 6/2/17.
//  Copyright © 2017 Awa Sun Yin. All rights reserved.
//

import LBTAComponents

//accessible for all classes
let twitterBlue = UIColor(r: 61, g: 176, b: 244)


class UserHeader: DatasourceCell {
    
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
        
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}

class UserFooter: DatasourceCell {
    
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.textColor = twitterBlue
        label.font = UIFont.systemFont(ofSize: 16)
        return label
        
    }()
    override func setupViews() {
        super.setupViews()
        
        let whiteBackgroundView = UIView()
        whiteBackgroundView.backgroundColor = .white
        
        
        backgroundColor = .white
        
        addSubview(whiteBackgroundView)
        addSubview(textLabel)
        
        //trick to separate the sections
        whiteBackgroundView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
