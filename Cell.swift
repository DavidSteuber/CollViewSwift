//
//  Cell.swift
//  CollViewSwift
//
//  Created by David Steuber on 4/3/15.
//  Copyright (c) 2015 David Steuber.
//

import Foundation
import UIKit

class Cell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundView = CustomCellBackground(frame: CGRectZero)
        self.selectedBackgroundView = backgroundView
    }

}