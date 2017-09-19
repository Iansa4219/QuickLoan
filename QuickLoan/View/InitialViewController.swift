//
//  InitialViewController.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class InitialViewController : UIController {
    
    var howItWorkButton: UIButton!
    var getStartedButton: UIButton!
    var overDraftProtaction: UIButton!
    
    //var moneyBagImage: UIImageView!
    
    var getFirstLabel: UILabel!
    var explainerLabel: UILabel!
    
    override func viewDidLoad() {
        //view.backgroundColor = UIColor.blue
        
        //setLogo()
        let _ = addStaticImage(xPos: 0.50, yPos: 0.16, width: 72, height: 67, imageName: "logo-L.png")
        super.viewDidLoad()
        
    }
    

}
