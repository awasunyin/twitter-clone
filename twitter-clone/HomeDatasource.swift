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
        
        let adrianUser = User(name: "Adrian Brink", username: "@adrianbrink", bioText: "testestestestesttestestestestesttestestestestesttestestestestesttestestestestest", profileImage: #imageLiteral(resourceName: "adrian_image"))
        
        let kindleCourseUser = User(name: "Kindle Course", username: "@kindleCourse", bioText: "testestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestesttestestestestest", profileImage: #imageLiteral(resourceName: "awa_image"))
        
        return [awaUser, adrianUser, kindleCourseUser]
    }()
    
    let tweets = ["tweet 1", "tweet 2", "tweet 3"]
        
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    //for the second section it will show TweetCell
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    //default section is one, when changed it duplicates the content
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
    
        return users.count
    }
}
