//
//  UIController.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit
class UIController : UIViewController {
    
    var backgroundImage: UIImageView!
    var moneyBagImage: UIImageView!
    
    var backButton: UIButton!
    var menuButton: UIButton!
    var pageTitle: UIButton!
    
    let top: CGFloat = 15
    let padding: CGFloat = 5
    let spacing: CGFloat = 10
    let border: CGFloat = 2
    
    let themColor = UIColor(red: 81/255, green: 99/255, blue: 125/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundImage(image: "BG.png")
    }
    
    func setBackgroundImage(image: String){
        let screenSize: CGRect = UIScreen.main.bounds
        let backgroundImage = UIImage(named: image)
        let imageView = UIImageView(image: backgroundImage)
        imageView.frame = screenSize;
        self.backgroundImage = imageView
        view.addSubview(imageView)
        view.sendSubview(toBack: imageView)
    }
    
//    func setLogo(){
//        
//        let image = UIImage(named: "logo-L.png")
//        var imageView : UIImageView!
//        imageView = UIImageView(frame: CGRect(x: 150, y: 100, width:72, height:67))
//        imageView.contentMode = .scaleAspectFill
//        imageView.image=image
//        //imageView.center = view.center
//        view.addSubview(imageView)
//    }
    func addStaticImage(frame: CGRect, imageName: String) ->UIImageView{
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.frame = frame
        view.addSubview(imageView)
        return imageView
    }
    
    func addStaticImage(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) ->UIImageView{
        let imageView = addStaticImage(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: imageView)
        }
        else{
            xPos = view.frame.width * xPos;
            imageView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: imageView)
        return imageView
    }
    
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
    
    //How it work Button
    func howItWorkButton(frame: CGRect, buttonName: String) -> UIButton{
        let image = UIImage(named: "button-sm")
        let button = UIButton(type: UIButtonType.system)
        button.setBackgroundImage(image, for: UIControlState.normal)
        //button.backgroundColor = themColor
        button.tintColor = UIColor.white
        button.setTitle("How It Work", for: UIControlState.normal)
        button.addTarget(self, action: #selector(InitialViewController.howItWorkButtonClick), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 43)
        view.addSubview(button)
        return button
    }
    func howItWorkButton(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, buttonName: String) -> UIButton{
        let buttonView = howItWorkButton(frame: CGRect(x: 0, y: 0, width: width, height: height), buttonName: buttonName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: buttonView)
        }
        else{
            xPos = view.frame.width * xPos;
            buttonView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: buttonView)
        return buttonView
    }
    
    //Get Start Button
    func getStartButton(frame: CGRect, buttonName: String) -> UIButton{
        let image = UIImage(named: "button-sm-blank")
        let button = UIButton(type: UIButtonType.system)
        //button.backgroundColor = themColor
        button.tintColor = themColor
        button.setTitle("Get Started", for: UIControlState.normal)
        button.setBackgroundImage(image, for: UIControlState.normal)
        button.addTarget(self, action: #selector(InitialViewController.getStartButtonClick), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 43)
        view.addSubview(button)
        return button
    }
    func getStartButton(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, buttonName: String) -> UIButton{
        let buttonView = getStartButton(frame: CGRect(x: 0, y: 0, width: width, height: height), buttonName: buttonName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: buttonView)
        }
        else{
            xPos = view.frame.width * xPos;
            buttonView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: buttonView)
        return buttonView
    }
    
    //Overdraft Protaction Button
    func overDraftProtactionButton() -> UIButton{
        let image = UIImage(named: "button-lg")
        let button = UIButton(type: UIButtonType.system)
        button.setBackgroundImage(image, for: UIControlState.normal)
        //button.backgroundColor = themColor
        button.tintColor = UIColor.white
        button.setTitle("Overdraft Protection", for: UIControlState.normal)
        button.addTarget(self, action: #selector(InitialViewController.overDraftProtactionButtonClick), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 47)
        view.addSubview(button)
        return button
    }
    
    //Get Cash First Label
    func getCachFirstLabel() -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.textColor = themColor
        label.font = label.font?.withSize(20)
        label.text = "Get $40.00 cash \nFast"
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 2
        self.view.addSubview(label)
        return label
    }
    
    //Offer Label
    func offerLabel() -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 350, height: 100))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.textColor = themColor
        label.font = label.font?.withSize(20)
        
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 3
        
        label.backgroundColor = UIColor(red: 81/255, green: 99/255, blue: 125/255, alpha: 0)
        label.text = "Draft let the back get $35.00 in \noverdraft fees. get cash now, \nchange your cold later"
        self.view.addSubview(label)
        return label
    }
    
    
    //=============================================================GET START ELEMENT===============================================================

    func imagePos(frame: CGRect, imageName: String) ->UIImageView{
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.frame = frame
        view.addSubview(imageView)
        return imageView
    }
    func imagePos(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) ->UIImageView{
        let imageView = imagePos(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: imageView)
        }
        else{
            xPos = view.frame.width * xPos;
            imageView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: imageView)
        return imageView
    }
    
    
    
    
    func contBg(frame: CGRect, imageName: String) ->UIImageView{
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.frame = frame
        view.addSubview(imageView)
        return imageView
    }
    func contBg(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) ->UIImageView{
        let imageView = contBg(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: imageView)
        }
        else{
            xPos = view.frame.width * xPos;
            imageView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: imageView)
        return imageView
    }
    
    
    
    //Content Label 1
    func contTx() -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 115, height: 25))
        //label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.textColor = themColor
        label.font = label.font?.withSize(18)
        label.backgroundColor = UIColor(red: 81/255, green: 99/255, blue: 125/255, alpha: 0)
        label.text = "GET START"
        self.view.addSubview(label)
        return label
    }
    //Content Label 2
    func contTx2(frame: CGRect, imageName: String) -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 133, height: 27))
        label.textAlignment = .left
        label.textColor = themColor
        label.font = label.font?.withSize(18)
        label.backgroundColor = UIColor(red: 81/255, green: 99/255, blue: 125/255, alpha: 0)
        label.text = "You have need"
        self.view.addSubview(label)
        return label
    }
    func contTx2(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) ->UILabel{
        let labelView = contTx2(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: labelView)
        }
        else{
            xPos = view.frame.width * xPos;
            labelView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: labelView)
        return labelView
    }
    
    //Content Label 3
    func contTx3(frame: CGRect, imageName: String) -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 240, height: 22))
        label.textAlignment = .left
        label.textColor = themColor
        label.font = label.font?.withSize(15)
        label.text = "A Valid California driving license"
        self.view.addSubview(label)
        return label
    }
    func contTx3(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) ->UILabel{
        let labelView = contTx3(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: labelView)
        }
        else{
            xPos = view.frame.width * xPos;
            labelView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: labelView)
        return labelView
    }
    
    
    //Content Label 4
    func contTx4(frame: CGRect, imageName: String) -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 240, height: 22))
        label.textAlignment = .left
        label.textColor = themColor
        label.font = label.font?.withSize(15)
        label.text = "A working call phone"
        self.view.addSubview(label)
        return label
    }
    func contTx4(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) ->UILabel{
        let labelView = contTx4(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: labelView)
        }
        else{
            xPos = view.frame.width * xPos;
            labelView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: labelView)
        return labelView
    }
    
    //Content Label 5
    func contTx5(frame: CGRect, imageName: String) -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 240, height: 22))
        label.textAlignment = .left
        label.textColor = themColor
        label.font = label.font?.withSize(15)
        label.text = "A Valid debit card"
        self.view.addSubview(label)
        return label
    }
    func contTx5(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) ->UILabel{
        let labelView = contTx5(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50){
            centerHorizontal(viewObj: labelView)
        }
        else{
            xPos = view.frame.width * xPos;
            labelView.frame.origin.x = xPos;
        }
        verticalByPercent(fromTop: yPos, viewObj: labelView)
        return labelView
    }
    
    
    //Start Button
    func startButton() -> UIButton{
        let image = UIImage(named: "next-button-bg.png")
        let button = UIButton(type: UIButtonType.system)
        button.setBackgroundImage(image, for: UIControlState.normal)
        //button.backgroundColor = themColor
        button.tintColor = UIColor.white
        button.setTitle("START", for: UIControlState.normal)
        button.addTarget(self, action: #selector(GetStartedControler.overDraftProtactionButtonClick2), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 285, height: 35)
        view.addSubview(button)
        return button
    }
}
