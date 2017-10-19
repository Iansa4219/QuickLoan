//
//  WhiteBoxControl.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 10/18/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class WhiteBoxControl : BaseControl {
    
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
        _ = layer.cornerRadius = 4
        frame = rect;
        backgroundColor = UIColor.white
        addDropShadow()
        parentView.addSubview(self)
        
        
        instructionLabel = addLabel(text: "GET STARTED", lineNumbers: 1, fromTop: 1, fontSize: 24, parent: self, yPos: 25, pos: .toCenter)
        setVerticalByPercent(fromTop: 0.08, viewObj: instructionLabel)
        
        seperatorIcon = addStaticImage(frame: CGRect(x: (frame.width / 2) - (56/2),
                                                     y: instructionLabel.frame.origin.y+(padding*2),
                                                     width: 56, height: 8), imageName: "underline.png")
        
        setVerticalByParent(yPos: 0.0, parentView: instructionLabel, viewObj: seperatorIcon)
        
        
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
    func setInstructions(instructions: String){
        instructionLabel.text = instructions;
        instructionLabel.sizeToFit()
        centerHorz(viewObj: instructionLabel)
    }
}
