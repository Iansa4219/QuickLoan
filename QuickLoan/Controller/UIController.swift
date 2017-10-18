//
//  UIController.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class MyView: UIView{

}

class UIController : UIViewController {
    
    var backgroundImage: UIImageView!
    var backButton: UIButton!
    var menuButton: UIButton!
    var pageTitle: UIButton!
    
    var moneyBagIcon: UIImageView!
    
    let top: CGFloat = 15;
    let padding: CGFloat = 5;
    let spacing: CGFloat = 10;
    let border: CGFloat = 2
    
    // Text and Label Defaults
    var defaultFont: UIFont!
    var defaultFontName: String!
    var defaultFontSize: CGFloat!
    var defaultTextColor: UIColor!
    var defaultLineBreakMode: NSLineBreakMode!
    var defaultNumberOfLines: Int!
    var defaultAlignment: NSTextAlignment!
    
    var align: NSTextAlignment!
    
    enum fromHorzCenter {
        case toRight
        case toLeft
        case toCenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundImage(image: "BG.png")
        
        defaultFontSize = 16;
        defaultFontName = "Avenir Next"
        defaultFont = UIFont(name: defaultFontName, size: defaultFontSize)
        defaultTextColor = UIColor.darkGray
        defaultLineBreakMode = .byWordWrapping
        defaultNumberOfLines = 1;
        defaultAlignment = .center
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
            centerHorz(viewObj: imageView)
        }
        else{
            xPos = view.frame.width * xPos + border;
            imageView.frame.origin.x = xPos;
        }
        setVerticalByPercent(fromTop: yPos, viewObj: imageView)
        return imageView
    }
    
    // horizontally center element
    func centerHorz(viewObj: UIView){
        let xPos: CGFloat = (view.frame.width / 2) - (viewObj.frame.width / 2)
        viewObj.frame.origin.x = xPos
    }
    
    func setHorizontalByPercent(fromLeft: CGFloat, position: fromHorzCenter, viewObj: UIView){
        let viewWidth = viewObj.frame.width;
        let frameWidth = view.frame.width;
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
    func setHorizontalByPercent(fromCenter: CGFloat, viewObj: UIView){
        //let xPos: CGFloat = (view.frame.width * fromCenter) + border;
        _ = (view.frame.width * fromCenter) + border;
        
    }
    
    //Vertically positioning element by "%"
    func setVerticalByPercent(fromTop: CGFloat, viewObj: UIView){
        var yPos: CGFloat = (view.frame.height * fromTop) + top + border;
        if(fromTop == 0.50)
        {
            yPos = CGFloat((view.frame.height / 2) - (viewObj.frame.width / 2))
        }
        viewObj.frame.origin.y = yPos;
    }
    
    func setVerticalByParent(yPos: CGFloat, parentView: UIView, viewObj: UIView){
        let yPos = parentView.frame.origin.y + parentView.frame.height + yPos;
        viewObj.frame.origin.y = yPos + padding
    }
    
    
    
    
    
    
    
    
    func addButton() -> UIButton{
        let button = UIButton(type: UIButtonType.system)
        button.setTitle("Button", for: UIControlState.normal)
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        view.addSubview(button)
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
        view.addSubview(label)
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
    
    func addLabel(text: String, lineNumbers: Int, fromTop: CGFloat, fontSize: CGFloat, parent: UIView, yPos: CGFloat, align: NSTextAlignment) -> UILabel{
        let label = addLabel(text: text, lineNumbers: lineNumbers, fromTop: fromTop, fontSize: fontSize, parent: parent, yPos: yPos)
        centerHorz(viewObj: label)
        return label;
    }
    
}
