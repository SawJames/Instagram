//
//  IGFeedPostTableViewCell.swift
//  Instagram
//
//  Created by saw Tarmalar on 03/09/2020.
//  Copyright © 2020 saw Tarmalar. All rights reserved.
//

import UIKit

class IGFeedPostTableViewCell: UITableViewCell {

    static let identifer = "IGFeedPostTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public func configure(){
        // configure the cell
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
