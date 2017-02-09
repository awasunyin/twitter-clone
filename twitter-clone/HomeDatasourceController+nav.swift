//
//  HomeDatasourceController+nav.swift
//  twitter-clone
//
//  Created by Haohua Sun Yin on 9/2/17.
//  Copyright © 2017 Awa Sun Yin. All rights reserved.
//

import UIKit

extension HomeDatasourceController {

    func setupNavigationBarView() {
        
        setupLeftNavItem()
        setupRightNavItems()
        setupRemainingNavItems()
        
    }
    
    private func setupLeftNavItem() {
        
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
        
    }
    
    private func setupRightNavItems() {
        
        //remember to change the icon imagees
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        //remember to change the icon imagees
        let composeButon = UIButton(type: .system)
        composeButon.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButon.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searchButton), UIBarButtonItem(customView: composeButon), UIBarButtonItem(customView: composeButon)]
    }
    
    private func setupRemainingNavItems() {
        
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "follow"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = titleImageView
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
    }

}
