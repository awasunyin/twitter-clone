//
//  HomeDatasource.swift
//  twitter-clone
//
//  Created by Haohua Sun Yin on 6/2/17.
//  Copyright © 2017 Awa Sun Yin. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
    
        let awaUser = User(name: "Awa Sun Yin", username: "@awasunyin", bioText: "testestetesteststest", profileImage: #imageLiteral(resourceName: "awa_image"))
        
        let adrianUser = User(name: "Adrian Brink", username: "@adrianbrink", bioText: "testestestestest", profileImage: #imageLiteral(resourceName: "adrian_image"))
        return [awaUser, adrianUser]
    }()
        
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
