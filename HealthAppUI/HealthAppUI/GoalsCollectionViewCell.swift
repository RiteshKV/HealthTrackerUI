//
//  GoalsCollectionViewCell.swift
//  HealthAppUI
//
//  Created by Ritesh Vishwakarma on 11/01/23.
//

import UIKit

class GoalsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var viewBackground: UIView!{
        didSet{
            self.viewBackground.layer.cornerRadius = 10
            self.viewBackground.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var imngBackground: UIImageView!{
        didSet{
            self.imngBackground.layer.cornerRadius = 10
            self.imngBackground.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgTrainer: UIImageView!
    
}
