//
//  WhiteBoxControl.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 10/18/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class WhiteBoxControl: BaseControl {
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    init(parentView: UIView) {
        self.init()
        
        let yPos = parentView.frame.height*0.26;
        let xPos = padding;
        let height = parentView.frame.height*(1.0-0.26)-padding;
        let width = parentView.frame.width-(padding*2)
        let rect: CGRect = CGRect(x: xPos, y: yPos, width: width, height: height)
        frame = rect;
        backgroundColor = UIColor.white
        addDropShadow()
        parentView.addSubview(self)
        

        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func addDropShadow(){
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 6.0; //default is 3.0
        layer.shadowOpacity = 0.5; //default is 0.0
    }
}
