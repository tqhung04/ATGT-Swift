//
//  CollectionViewCell.swift
//  ATGT
//
//  Created by Vu Duc Chung on 06/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

class  CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    
    override var isSelected: Bool {
        didSet {
            self.contentView.backgroundColor = isSelected ? UIColor.gray : UIColor.white
        }
    }
}
