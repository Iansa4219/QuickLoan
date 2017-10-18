//
//  Positionner.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 10/17/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

positionner: UIView{
    // horizontally center element
    func centerHorizontal(viewObj: UIView){
        let xPos: CGFloat = (view.frame.width / 2) - (viewObj.frame.width / 2)
        viewObj.frame.origin.x = xPos
    }
    
    //Vertically positioning element by "%"
    func verticalByPercent(fromTop: CGFloat, viewObj: UIView){
        var yPos: CGFloat = (view.frame.height * fromTop) + top + border;
        if(fromTop == 0.50){
            yPos = CGFloat((view.frame.height / 2) - (viewObj.frame.width / 2))
        }
        viewObj.frame.origin.y = yPos;
    }
    
}
