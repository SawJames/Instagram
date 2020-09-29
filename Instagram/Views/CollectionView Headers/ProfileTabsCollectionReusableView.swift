//
//  ProfileTabsCollectionReusableView.swift
//  Instagram
//
//  Created by saw Tarmalar on 08/09/2020.
//  Copyright © 2020 saw Tarmalar. All rights reserved.
//

import UIKit

class ProfileTabsCollectionReusableView: UICollectionReusableView {
        static let identifier = "ProfileTabsCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
