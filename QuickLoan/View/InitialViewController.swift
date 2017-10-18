//
//  InitialViewController.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class InitialViewController : UIController {
    
    var howItWorksButton: UIButton!
    var getStartedButton: UIButton!
    var overdraftProtection: UIButton!
    
    var moneyBagImage: UIImageView!
    
    var getFastCashLabel: UILabel!
    var explainerLabel: UILabel!
    
    override func viewDidLoad() {
        //view.backgroundColor = UIColor.blue
        
        //setLogo()
        //addStaticImage(x: 0, y: 0, width: 72, height: 67, imageName: "logo-L.png")
        
        super.viewDidLoad()
        
        let logoLarge = addStaticImage(xPos: 0.50, yPos: 0.13, width: 72, height: 67, imageName: "logo-L.png")
        
        let cashLabel = addLabel(text: "GET $40 CASH NOW PAY LATER", lineNumbers: 2, fromTop: 0.0, fontSize: 24, parent: logoLarge, yPos: 20, align: .center)
        
        let howItWorksButton = addButton(title: "HOW IT WORKS", width: 160, height: 46, image: "button-lg.png")
        howItWorksButton.addTarget(self, action: #selector(InitialViewController.howItWorksClicked), for: UIControlEvents.touchUpInside)
        setHorizontalByPercent(fromLeft: spacing, position: .toLeft, viewObj: howItWorksButton)
        setVerticalByParent(yPos: 35, parentView: cashLabel, viewObj: howItWorksButton)
        
        let getStartedButton = addButton(title: "GET STARTED", width: 160, height: 46, image: "button-sm-blank.png")
        getStartedButton.setTitleColor(UIColor.darkGray, for: .normal)  // 51637D
        setHorizontalByPercent(fromLeft: spacing, position: .toRight, viewObj: getStartedButton)
        setVerticalByParent(yPos: 35, parentView: cashLabel, viewObj: getStartedButton)
        getStartedButton.addTarget(self, action: #selector(InitialViewController.getStartedClicked), for: UIControlEvents.touchUpInside)
        
        let bottomLabel = addLabel(text: "Don't let the bank get $35.00 in overdraft fee's get cash now,\nCharge your debit card later", lineNumbers: 3, fromTop: 0.60, fontSize: 24)
        centerHorz(viewObj: bottomLabel)
        
        let OverdraftProtectionButton = addButton(title: "Overdraft Protection", width: 200, height: 48, image: "button-lg")
        setVerticalByParent(yPos: 35, parentView: bottomLabel, viewObj: OverdraftProtectionButton)
        centerHorz(viewObj: OverdraftProtectionButton)



        
        
    }

    
    func testMe(){
        print("Test Button is working")
    }
    func howItWorksClicked(){
        print("How It Works")
    }
    
    
    func getStartedClicked(){
        _ = WhiteBoxControl(parentView: view)
    }
    

}
