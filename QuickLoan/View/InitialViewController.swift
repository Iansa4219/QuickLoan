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
        //addStaticImage(x: 0, y: 0, width: 72, height: 67, imageName: "logo-L.png")
        
        super.viewDidLoad()
        
        let _ = addStaticImage(xPos: 0.50, yPos: 0.16, width:72, height:67, imageName: "logo-L.png")
        
        let _ = howItWorkButton(xPos: 0.08, yPos: 0.41, width:72, height:67, buttonName: "")
        
        let _ = getStartButton(xPos: 0.52, yPos: 0.41, width:72, height:67, buttonName: "")

        let overDraftProtaction = overDraftProtactionButton()
        centerHorizontal(viewObj: overDraftProtaction)
        verticalByPercent(fromTop: 0.80, viewObj: overDraftProtaction)
        
        let getCachFirst = getCachFirstLabel()
        centerHorizontal(viewObj: getCachFirst)
        verticalByPercent(fromTop: 0.27, viewObj: getCachFirst)
        
        let offerText = offerLabel()
        centerHorizontal(viewObj: offerText)
        verticalByPercent(fromTop: 0.63, viewObj: offerText)

        
        
    }
    

//    func textField() {
//        let textField = UITextField(frame: CGRect (x: 4, y: 4, width: 122, height: 122));
//        textField.textAlignment = NSTextAlignment.center
//        textField.textColor = UIColor.blue
//        textField.borderStyle = UITextBorderStyle.line
//        textField.autocapitalizationType = UITextAutocapitalizationType.words // If you need any capitalization
//        self.view.addSubview(textField)
//        
//    }
    
    
//    func textView() {
//        let textView = UITextView(frame: CGRect (x: 4, y: 4, width: 122, height: 122));
//        textView.textAlignment = NSTextAlignment.center
//        textView.textColor = UIColor.blue
//        textView.backgroundColor = UIColor.red
//        textView.text = "Hello sdhfkdf kdfhjg skdfhg ksdfhjg skfhg f skfhg skfjhgfj hj dfgh sfg kjfngfd"
//        self.view.addSubview(textView)
//    }
    
    
    
    func howItWorkButtonClick(){
        print("how It Work ButtonClick Button is working well!")
    }
    
    func getStartButtonClick(){
        print("Get Start Button is working !")
    }
    
    func overDraftProtactionButtonClick(){
        print("Over Draft Button is working well !")
    }
    

}
