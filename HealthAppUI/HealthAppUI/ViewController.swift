//
//  ViewController.swift
//  HealthAppUI
//
//  Created by Ritesh Vishwakarma on 11/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewProfileBg: UIView!{
        didSet{
            self.viewProfileBg.layer.borderWidth = 2.5
            self.viewProfileBg.layer.borderColor = UIColor(hexString: "#00a1e6").cgColor
            self.viewProfileBg.layer.cornerRadius = 10
            self.viewProfileBg.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var viewLevelBg: UIView!{
        didSet{
            self.viewLevelBg.layer.borderWidth = 2.5
            self.viewLevelBg.layer.borderColor = UIColor(hexString: "#00a1e6").cgColor
            self.viewLevelBg.layer.cornerRadius = 10
            self.viewLevelBg.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var viewProgress: CustomProgressView!{
        didSet{
            self.viewProgress.layer.borderWidth = 2.5
            self.viewProgress.layer.borderColor = UIColor(hexString: "#00a1e6").cgColor
            self.viewProgress.layer.cornerRadius = 10
            self.viewProgress.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var viewExplore: UIView!{
        didSet{
            self.viewExplore.layer.cornerRadius = 10
            self.viewExplore.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var imgExplore: UIImageView!{
        didSet{
            self.imgExplore.layer.cornerRadius = 10
            self.imgExplore.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var viewExploreTap: UIView!{
        didSet{
            self.viewExploreTap.layer.borderWidth = 2.5
            self.viewExploreTap.layer.borderColor = UIColor.white.cgColor
            self.viewExploreTap.layer.cornerRadius = 10
            self.viewExploreTap.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var viewFirstRoutine: UIView!{
        didSet{
            self.viewFirstRoutine.layer.cornerRadius = 10
            self.viewFirstRoutine.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var imgFirstRoutine: UIImageView!{
        didSet{
            self.imgFirstRoutine.layer.cornerRadius = 10
            self.imgFirstRoutine.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var viewSecondRoutine: UIView!{
        didSet{
            self.viewSecondRoutine.layer.cornerRadius = 10
            self.viewSecondRoutine.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var imgSecondRoutine: UIImageView!{
        didSet{
            self.imgSecondRoutine.layer.cornerRadius = 10
            self.imgSecondRoutine.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var colGoals: UICollectionView!
    
    var goalTitle: [String] = ["Day2: Steps to Recharge", "Training"]
    var goalDesc: [String] = ["Meditation", "Workout"]
    var goalCoach: [String] = ["Muskaan", "Shehnaaz"]
    var goalBG: [String] = ["2","3"]
    var coachImg: [String] = ["5","4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.colGoals.dataSource = self
        self.colGoals.reloadData()
    }


}


extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return goalTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GoalsCollectionViewCell", for: indexPath) as! GoalsCollectionViewCell
        
        cell.lblTitle.text = self.goalTitle[indexPath.row]
        cell.lblDesc.text = self.goalDesc[indexPath.row]
        cell.lblName.text = "Coach - " + self.goalCoach[indexPath.row]
        cell.imngBackground.image = UIImage(named: self.goalBG[indexPath.row])
        cell.imgTrainer.image = UIImage(named: self.coachImg[indexPath.row])
        return cell
    }
    
    
}
