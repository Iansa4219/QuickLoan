//
//  BaseControl.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class Defaults: UIView {
    
    var backgroundImage: UIImageView!
    var backButton: UIButton!
    var menuButton: UIButton!
    var pageTitle: UIButton!
    
    var moneyBagIcon: UIImageView!
    
    var top: CGFloat = 15;
    let padding: CGFloat = 25;
    let spacing: CGFloat = 10;
    var border: CGFloat = 2
    
    // Text and Label Defaults
    var defaultFont: UIFont!
    var defaultFontName: String!
    var defaultFontSize: CGFloat!
    var defaultTextColor: UIColor!
    var defaultLineBreakMode: NSLineBreakMode!
    var defaultNumberOfLines: Int!
    var defaultAlignment: NSTextAlignment!
    
    enum fromHorzCenter {
        case toRight
        case toLeft
        case toCenter
        case fromBottom
        case fromLeft
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        defaultFontSize = 30;
        defaultFontName = "Avenir Next"
        defaultFont = UIFont(name: defaultFontName, size: defaultFontSize)
        defaultTextColor = UIColor.darkGray
        defaultLineBreakMode = .byWordWrapping
        defaultNumberOfLines = 1;
        defaultAlignment = .center
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setBackgroundImage(image: String){
        let screenSize: CGRect = frame
        //  This puts the screen size in a CGRect
        
        let backgroundImage = UIImage(named: image)
        //  We're passing the string that is provided
        //  in the constructor.
        
        let imageView = UIImageView(image: backgroundImage)
        //  This create an image view object, which
        //  we pass the UIImage object that we created
        //  above
        
        imageView.frame = screenSize;
        //  This line sets the frame size
        self.backgroundImage = imageView
        
        addSubview(imageView)
        //  This line adds the newly created image view
        //  to the parent view
        sendSubview(toBack: imageView)
        //  This sends the image view to the back.
    }
}


class BaseControl : Defaults {

    var instructionLabel : UILabel!
    var seperatorIcon : UIImageView!
    var bottomButton : UIButton!
    var bottomButtonText = "NEXT"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addStaticImage(frame: CGRect, imageName: String) -> UIImageView{
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.frame = frame
        addSubview(imageView)
        return imageView
    }
    
    func addStaticImage(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) -> UIImageView{
        let imageView = addStaticImage(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorz(viewObj: imageView)
        }
        else{
            xPos = frame.width * xPos;
            imageView.frame.origin.x = xPos;
        }
        setVerticalByPercent(fromTop: yPos, viewObj: imageView)
        return imageView
    }
    
    //Center Horizontal
    func centerHorz(viewObj: UIView){
        let xPos: CGFloat = (frame.width / 2) - (viewObj.frame.width / 2)
        viewObj.frame.origin.x = xPos;
    }
    
    func setHorizontalByPercent(fromLeft: CGFloat, position: fromHorzCenter, viewObj: UIView){
        let viewWidth = viewObj.frame.width;
        let frameWidth = frame.width;
        let frameCenter = frameWidth / 2;
        
        if(position == .toLeft){
            let xPos = frameCenter - viewWidth - fromLeft
            viewObj.frame.origin.x = xPos;
        }
        else{
            let xPos = frameCenter + fromLeft
            viewObj.frame.origin.x = xPos;
        }
    }
    
    func setHorizontalByPercent(fromLeft: CGFloat, position: fromHorzCenter, anchor: fromHorzCenter, viewObj: UIView){
        let viewWidth = viewObj.frame.width;
        let frameWidth = frame.width;
        let frameCenter = frameWidth / 2;
        
        if(position == .toLeft){
            let xPos = frameCenter - viewWidth - fromLeft
            viewObj.frame.origin.x = xPos;
        }
        else{
            let xPos = frameCenter + fromLeft
            viewObj.frame.origin.x = xPos;
        }
        
        if(anchor == .fromLeft){
            let xPos = 0 + (frame.width * fromLeft)
            viewObj.frame.origin.x = xPos;
        }
    }
    
    func setHorizontalByPercent(fromCenter: CGFloat, viewObj: UIView){
        let xPos: CGFloat = (frame.width * fromCenter) + border;
        viewObj.frame.origin.x = xPos;
    }
    
    func setHorizontalByParent(xPos: CGFloat, parentView: UIView, viewObj: UIView){
        let xPos = parentView.frame.origin.x + parentView.frame.width + xPos;
        viewObj.frame.origin.x = xPos
    }
    
    //Center Vertical
    func setVerticalByPercent(fromTop: CGFloat, viewObj: UIView){
        var yPos: CGFloat = (frame.height * fromTop) + top + border;
        if(fromTop == 0.50){
            yPos = CGFloat((frame.height / 2) - (viewObj.frame.width / 2))
        }
        viewObj.frame.origin.y = yPos;
    }
    
    func setVerticalByPercent(fromTop: CGFloat, viewObj: UIView, pos: fromHorzCenter){
        
        var yPos: CGFloat = (frame.height * fromTop);
        if(fromTop == 0.50){
            yPos = CGFloat((frame.height / 2) - (viewObj.frame.width / 2))
        }
        
        if(pos == .fromBottom){
            yPos = CGFloat((viewObj.superview?.frame.height)! - (((viewObj.superview?.frame.height)!*fromTop)) - viewObj.frame.height)
        }
        
        viewObj.frame.origin.y = yPos;
    }
    
    func setVerticalByParent(yPos: CGFloat, parentView: UIView, viewObj: UIView){
        let yPos = parentView.frame.origin.y + parentView.frame.height + yPos;
        viewObj.frame.origin.y = yPos
    }
    //----------------------------------------------------------------------------------------
    
    func addButton() -> UIButton{
        let button = UIButton(type: UIButtonType.system)
        button.setTitle("Button", for: UIControlState.normal)
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        button.titleLabel?.font = defaultFont
        
        addSubview(button)
        return button
    }
    
    func addButton(title: String, width: CGFloat, height: CGFloat, image: String) -> UIButton{
        let button = addButton(width: width, height: height, image: image)
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = defaultFont
        return button
    }
    
    func addButton(width: CGFloat, height: CGFloat, image: String) -> UIButton{
        let button = addButton();
        button.frame.size.width = width;
        button.frame.size.height = height;
        let btnImg = UIImage(named: image)
        button.setBackgroundImage(btnImg, for: .normal)
        return button;
    }
    
    func addButton(xPos: CGFloat, yPos: CGFloat) -> UIButton{
        let button = addButton()
        centerHorz(viewObj: button)
        setVerticalByPercent(fromTop: xPos, viewObj: button)
        return button;
    }
    
    func addLabel(text: String) -> UILabel{
        let label = UILabel()
        label.text = text;
        addSubview(label)
        return label;
    }
    
    func addLabel(text: String, lineNumbers: Int) -> UILabel{
        let bottomLabel = addLabel(text: text)
        bottomLabel.font = defaultFont
        bottomLabel.textColor = defaultTextColor
        bottomLabel.lineBreakMode = defaultLineBreakMode
        bottomLabel.numberOfLines = lineNumbers
        bottomLabel.textAlignment = defaultAlignment
        bottomLabel.sizeToFit()
        return bottomLabel
    }
    
    func addLabel(text: String, lineNumbers: Int, fromTop: CGFloat) -> UILabel{
        let label = addLabel(text: text, lineNumbers: lineNumbers)
        setVerticalByPercent(fromTop: fromTop, viewObj: label)
        return label;
    }  //        bottomLabel.font = UIFont(name: defaultFontName, size: 24)
    
    func addLabel(text: String, lineNumbers: Int, fromTop: CGFloat, fontSize: CGFloat) -> UILabel{
        let label = addLabel(text: text, lineNumbers: lineNumbers, fromTop: fromTop)
        label.font = UIFont(name: defaultFontName, size: fontSize)
        label.sizeToFit()
        return label;
    }
    
    func addLabel(text: String, lineNumbers: Int, fromTop: CGFloat, fontSize: CGFloat, parent: UIView, yPos: CGFloat) -> UILabel{
        let label = addLabel(text: text, lineNumbers: lineNumbers, fromTop: fromTop, fontSize: fontSize)
        setVerticalByParent(yPos: yPos, parentView: parent, viewObj: label)
        return label;
    }
    
    func addLabel(text: String, lineNumbers: Int, fromTop: CGFloat, fontSize: CGFloat, parent: UIView, yPos: CGFloat, pos: fromHorzCenter) -> UILabel{
        let label = addLabel(text: text, lineNumbers: lineNumbers, fromTop: fromTop, fontSize: fontSize, parent: parent, yPos: yPos)
        centerHorz(viewObj: label)
        return label;
    }
}

class GetStartedControl : WhiteBoxControl {
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(parentView: UIView){
        //super.init(parentView: parentView)
        super.init(parentView: parentView)

        
        
        let youWillNeedLabel = addLabel(text: "You will need", lineNumbers: 1, fromTop: 0.20, fontSize: 16, parent: self, yPos: 25, pos: .toCenter)
        setVerticalByParent(yPos: 15, parentView: seperatorIcon, viewObj: youWillNeedLabel)
        youWillNeedLabel.textColor = UIColor.blue
        
        let list = addLabel(text: "\u{2705}\t\tA California Driver's License\n\u{2705}\t\tA working cell phone\n\u{2705}\t\tA Valid Debit Card", lineNumbers: 3, fromTop: 0.20, fontSize: 18, parent: self, yPos: 25, pos: .toCenter)
        list.textAlignment = .left
        list.frame.size.width = 300
        list.sizeToFit()
        setVerticalByParent(yPos: 50, parentView: youWillNeedLabel, viewObj: list)
        setHorizontalByPercent(fromLeft: 0.05, position: .toLeft, anchor: .fromLeft, viewObj: list)
        
        let getStartedButton = addButton(title: "START", width: 320, height: 40, image: "next-button-bg.png")
        getStartedButton.addTarget(self, action: #selector(GetStartedControl.getStartButtonClicked), for: .touchUpInside)
        setVerticalByPercent(fromTop: 0.09, viewObj: getStartedButton, pos: .fromBottom)
        centerHorz(viewObj: getStartedButton)
        
    }
 
    func getStartButtonClicked(sender: UIButton){
        print("Button is working")
        //let scanDriverLicense: ScanDriversLicenseControl = ScanDriversLicenseControl(parentView: self.superview!);
         _ = ScanDriversLicenseControl(parentView: self.superview!);
    }
    
}


class ScanDriversLicenseControl: WhiteBoxControl, UITextFieldDelegate{
    
    var driversLicense: UITextField = UITextField()
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(parentView: UIView){
        super.init(parentView: parentView)
        setInstructions(instructions: "Scan your driver's license")
        centerHorz(viewObj: driversLicense)
        setVerticalByPercent(fromTop: 0.50, viewObj: driversLicense)
        driversLicense.frame.size.width = 100;
        driversLicense.frame.size.height = 75
        addSubview(driversLicense)
        driversLicense.becomeFirstResponder()
        driversLicense.delegate = self
        
        let getStartedButton = addButton(title: "NEXT", width: 320, height: 40, image: "next-button-bg.png")
        getStartedButton.addTarget(self, action: #selector(ScanDriversLicenseControl.getStartButtonClicked), for: .touchUpInside)
        setVerticalByPercent(fromTop: 0.09, viewObj: getStartedButton, pos: .fromBottom)
        centerHorz(viewObj: getStartedButton)

    }
    func getStartButtonClicked(sender: UIButton){
        print("Button is working")
        //let scanDriverLicense: ScanDriversLicenseControl = ScanDriversLicenseControl(parentView: self.superview!);
        _ = PhoneNumberControl(parentView: self.superview!);
    }
}

class PhoneNumberControl: WhiteBoxControl{
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(parentView: UIView){
        super.init(parentView: parentView)
        setInstructions(instructions: "Type in your phone number")
        
        
        let getStartedButton = addButton(title: "NEXT", width: 320, height: 40, image: "next-button-bg.png")
        getStartedButton.addTarget(self, action: #selector(PhoneNumberControl.getStartButtonClicked), for: .touchUpInside)
        setVerticalByPercent(fromTop: 0.09, viewObj: getStartedButton, pos: .fromBottom)
        centerHorz(viewObj: getStartedButton)
    }
    func getStartButtonClicked(sender: UIButton){
        print("Button is working")
        //let scanDriverLicense: ScanDriversLicenseControl = ScanDriversLicenseControl(parentView: self.superview!);
        _ = VerifyControl(parentView: self.superview!);
    }
}

class VerifyControl: WhiteBoxControl{
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override init(parentView: UIView){
        super.init(parentView: parentView)
        setInstructions(instructions: "Verify your phone number")
        
        
        let getStartedButton = addButton(title: "NEXT", width: 320, height: 40, image: "next-button-bg.png")
        getStartedButton.addTarget(self, action: #selector(VerifyControl.getStartButtonClicked), for: .touchUpInside)
        setVerticalByPercent(fromTop: 0.09, viewObj: getStartedButton, pos: .fromBottom)
        centerHorz(viewObj: getStartedButton)
    }
    func getStartButtonClicked(sender: UIButton){
        print("Button is working")
        //let scanDriverLicense: ScanDriversLicenseControl = ScanDriversLicenseControl(parentView: self.superview!);
        _ = DebitCardControl(parentView: self.superview!);
    }
    
}

class DebitCardControl: WhiteBoxControl{
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(parentView: UIView){
        super.init(parentView: parentView)
        setInstructions(instructions: "Type in your debit card info")
        
        
        let getStartedButton = addButton(title: "NEXT", width: 320, height: 40, image: "next-button-bg.png")
        getStartedButton.addTarget(self, action: #selector(DebitCardControl.getStartButtonClicked), for: .touchUpInside)
        setVerticalByPercent(fromTop: 0.09, viewObj: getStartedButton, pos: .fromBottom)
        centerHorz(viewObj: getStartedButton)
    }
    func getStartButtonClicked(sender: UIButton){
        print("Button is working")
        //let scanDriverLicense: ScanDriversLicenseControl = ScanDriversLicenseControl(parentView: self.superview!);
        _ = SelectCashControl(parentView: self.superview!);
    }
}

class SelectCashControl: WhiteBoxControl{
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(parentView: UIView){
        super.init(parentView: parentView)
        setInstructions(instructions: "Select your cash")
        
        
        let getStartedButton = addButton(title: "NEXT", width: 320, height: 40, image: "next-button-bg.png")
        //getStartedButton.addTarget(self, action: #selector(SelectCashControl.getStartButtonClicked), for: .touchUpInside)
        setVerticalByPercent(fromTop: 0.09, viewObj: getStartedButton, pos: .fromBottom)
        centerHorz(viewObj: getStartedButton)
    }
//    func getStartButtonClicked(sender: UIButton){
//        print("Button is working")
//        //let scanDriverLicense: ScanDriversLicenseControl = ScanDriversLicenseControl(parentView: self.superview!);
//        _ = VerifyControl(parentView: self.superview!);
//    }
}



