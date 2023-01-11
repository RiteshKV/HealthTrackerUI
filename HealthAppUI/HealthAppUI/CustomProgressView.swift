//
//  CustomProgressView.swift
//  HealthAppUI
//
//  Created by Ritesh Vishwakarma on 11/01/23.
//

import Foundation
import UIKit

@IBDesignable
class CustomProgressView: UIView {
    @IBInspectable var progress: Float = 0.0 {
        didSet {
            setNeedsDisplay()
        }
    }
    @IBInspectable var trackTintColor: UIColor = .lightGray {
        didSet {
            setNeedsDisplay()
        }
    }
    @IBInspectable var progressTintColor: UIColor = .blue {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(trackTintColor.cgColor)
        context.fill(rect)
        let width = rect.size.width * CGFloat(progress)
        let progressRect = CGRect(x: 0, y: 0, width: width, height: rect.size.height)
        context.setFillColor(progressTintColor.cgColor)
        context.fill(progressRect)
    }
}

