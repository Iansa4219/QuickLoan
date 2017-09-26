//
//  GetStartedControler.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class GetStartedControler : UIController{
    
    //@IBOutlet weak var tableView: UITableView!
    //let sectionTitle: String = "Page Title"
    //let sectionImage: UIImage = #imageLiteral(resourceName: "back-active.png")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let bg = contBg(frame: CGRect(x: 4, y: 4, width: 367, height: 499), imageContBg: "BG-Content.png")
//        self.view.addSubview(bg)
        let _ = imagePos(xPos: 0.50, yPos: 0.27, width: 340, height: 462, imageName: "BG-Content.png")
        
        let _ = imagePos(xPos: 0.50, yPos: 0.15, width: 60, height: 56, imageName: "logo-sm.png")
        let _ = imagePos(xPos: 0.50, yPos: 0.37, width: 56, height: 10, imageName: "underline.png")
        
        let cont = contTx()
        centerHorizontal(viewObj: cont)
        verticalByPercent(fromTop: 0.33, viewObj: cont)
        
        let _ = contTx2(xPos: 0.18, yPos: 0.45, width: 133, height: 27, imageName: "")
        
        
        let _ = imagePos(xPos: 0.18, yPos: 0.53, width: 12, height: 8, imageName: "ic_tick.png")
        let _ = contTx3(xPos: 0.23, yPos: 0.52, width: 230, height: 22, imageName: "")
        
        let _ = imagePos(xPos: 0.18, yPos: 0.58, width: 12, height: 8, imageName: "ic_tick.png")
        let _ = contTx4(xPos: 0.23, yPos: 0.57, width: 230, height: 22, imageName: "")
        
        let _ = imagePos(xPos: 0.18, yPos: 0.63, width: 12, height: 8, imageName: "ic_tick.png")
        let _ = contTx5(xPos: 0.23, yPos: 0.62, width: 230, height: 22, imageName: "")
        
        
        let startbtn = startButton()
        centerHorizontal(viewObj: startbtn)
        verticalByPercent(fromTop: 0.83, viewObj: startbtn)
    
    }
    
    
    func overDraftProtactionButtonClick2(){
        print("Over Draft Button is working well2222 !")
    }
    

}
