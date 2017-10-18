//
//  Extensions.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 10/17/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

extension UIView{
        // horizontally center element
        func centerHorizontal(viewObj: UIView){
            let xPos: CGFloat = (viewObj.frame.width / 2) - (viewObj.frame.width / 2)
            viewObj.frame.origin.x = xPos
        }
    
        //Vertically positioning element by "%"
        func verticalByPercent(fromTop: CGFloat, viewObj: UIView){
            var yPos: CGFloat = (viewObj.frame.height * fromTop) + 15 + 2;
            if(fromTop == 0.50){
                yPos = CGFloat((viewObj.frame.height / 2) - (viewObj.frame.width / 2))
            }
            viewObj.frame.origin.y = yPos;
        }
    
    
}
