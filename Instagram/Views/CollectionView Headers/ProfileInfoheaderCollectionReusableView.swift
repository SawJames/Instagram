//
//  ProfileInfoheaderCollectionReusableView.swift
//  Instagram
//
//  Created by saw Tarmalar on 08/09/2020.
//  Copyright © 2020 saw Tarmalar. All rights reserved.
//

import UIKit

class ProfileInfoheaderCollectionReusableView: UICollectionReusableView {
        static let identifier = "ProfileInfoheaderCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
