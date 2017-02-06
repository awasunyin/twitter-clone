//
//  HomeDataSourceController.swift
//  twitter-clone
//
//  Created by Haohua Sun Yin on 6/2/17.
//  Copyright © 2017 Awa Sun Yin. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {

    let words = ["user1", "user2", "user3"]
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }

}

class HomeDataSourceController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //renders the items
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
        
    }
}
