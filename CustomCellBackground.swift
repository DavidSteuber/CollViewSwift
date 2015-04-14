//
//  CustomCellBackground.swift
//  CollViewSwift
//
//  Created by David Steuber on 4/3/15.
//  Copyright (c) 2015 David Steuber.
//

import Foundation
import UIKit
import QuartzCore

class CustomCellBackground: UIView {

    override func drawRect(rect: CGRect) {
        let context: CGContext! = UIGraphicsGetCurrentContext()
        CGContextSaveGState(context)
        var bezierPath: UIBezierPath = UIBezierPath(roundedRect: rect, cornerRadius: 5.0)
        bezierPath.lineWidth = 5.0
        UIColor.blackColor().setStroke()
        let fillColor = UIColor(red: 0.529, green: 0.808, blue: 0.922, alpha: 1.0)
        fillColor.setFill()
        bezierPath.stroke()
        bezierPath.fill()
        CGContextRestoreGState(context)
    }
}
