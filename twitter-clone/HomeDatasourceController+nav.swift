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
        
        //loading the nav items
        setupLeftNavItem()
        setupRightNavItems()
        setupRemainingNavItems()
        
    }
    
    //customising left nav items
    private func setupLeftNavItem() {
        
        //setting button
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
        
    }
    
    //customising right nav items
    private func setupRightNavItems() {
        
        //setting button
        //remember to change the icon imagees
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        //remember to change the icon imagees
        let composeButon = UIButton(type: .system)
        composeButon.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButon.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        //when there is +1 button 
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searchButton), UIBarButtonItem(customView: composeButon), UIBarButtonItem(customView: composeButon)]
        
    }
    
    //customising remaining nav items
    private func setupRemainingNavItems() {
        
        //logo in the middle of nav bar
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "follow"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = titleImageView
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        //thin line separating the nav bar from section 1
        let navBarSepartorView = UIView()
        navBarSepartorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navBarSepartorView)
        
        //layout constraints for separator line
        navBarSepartorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
        
    }
}
