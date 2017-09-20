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
        let button = UIButton(type: UIButtonType.system)
        button.backgroundColor = UIColor.brown
        button.tintColor = UIColor.white
        button.setTitle("How It Work", for: UIControlState.normal)
        button.addTarget(self, action: #selector(InitialViewController.howItWorkButtonClick), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
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
        let button = UIButton(type: UIButtonType.system)
        button.backgroundColor = UIColor.brown
        button.tintColor = UIColor.white
        button.setTitle("Get Started", for: UIControlState.normal)
        button.addTarget(self, action: #selector(InitialViewController.getStartButtonClick), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
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
        let button = UIButton(type: UIButtonType.system)
        button.backgroundColor = UIColor.brown
        button.tintColor = UIColor.white
        button.setTitle("Overdraft Protection", for: UIControlState.normal)
        button.addTarget(self, action: #selector(InitialViewController.overDraftProtactionButtonClick), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        view.addSubview(button)
        return button
    }
    
    //Get Cash First Label
    func getCachFirstLabel() -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.textColor = UIColor.blue
        label.text = "Get $40.00 cash Fast"
        self.view.addSubview(label)
        return label
    }
    
    //Offer Label
    func offerLabel() -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.textColor = UIColor.blue
        label.text = "Draft let the back get $35.00 in overdraft fees. get cash now, change your cold later"
        self.view.addSubview(label)
        return label
    }
    
}
