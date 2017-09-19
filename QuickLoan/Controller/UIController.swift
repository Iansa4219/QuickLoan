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
    
    let top: CGFloat = 15;
    let padding: CGFloat = 5;
    let spacing: CGFloat = 10;
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
    func addStaticImage(frame: CGRect, imageName: String) -> UIImageView{
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.frame = frame
        view.addSubview(imageView)
        return imageView
    }
    func addStaticImage(xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat, imageName: String) -> UIImageView{
        let imageView = addStaticImage(frame: CGRect(x: 0, y: 0, width: width, height: height), imageName: imageName);
        var xPos = xPos;
        if(xPos == 0.50)
        {
            centerHorz(viewObj: imageView)
        }
        else
        {
            xPos = view.frame.width * xPos + border;
            imageView.frame.origin.x = xPos;
        }
        setVerticalByPercent(fromTop: yPos, viewObj: imageView)
        return imageView
    }
    func centerHorz(viewObj: UIView){
        let xPos: CGFloat = (view.frame.width / 2) - (viewObj.frame.width / 2)
        viewObj.frame.origin.x = xPos
    }
    
    func setVerticalByPercent(fromTop: CGFloat, viewObj: UIView){
        var yPos: CGFloat = (view.frame.height * fromTop) + top + border;
        if(fromTop == 0.50)
        {
            yPos = CGFloat((view.frame.height / 2) - (viewObj.frame.width / 2))
        }
        viewObj.frame.origin.y = yPos;
    }
    
}
