//
//  ViewController.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/18/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = UIColor.cyan
        
//        //for background
//        assignbackground()
//        
//        //for logo
//        assignLogo()
//        
//        //for lable
//        assignLable()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    //for background
//    func assignbackground(){
//        let background = UIImage(named: "BG")
//        var imageView : UIImageView!
//        imageView = UIImageView(frame: view.bounds)
//        imageView.contentMode = UIViewContentMode.scaleAspectFill
//        imageView.clipsToBounds = true
//        imageView.image = background
//        imageView.center = view.center
//        view.addSubview(imageView)
//        self.view.sendSubview(toBack: imageView)
//    }
//    //for logo
//    func assignLogo(){
//        let image = UIImage(named: "logo-L.png")
//        var imageView : UIImageView!
//        imageView = UIImageView(frame: CGRect(x: 150, y: 100, width:72, height:67))
//        imageView.contentMode = .scaleAspectFill
//        imageView.image=image
//        //imageView.center = view.center
//        view.addSubview(imageView)
//    }
//    //for lable
//    func assignLable(){
//        let lblNew = UILabel()
//        //lblNew.backgroundColor = UIColor.blue
//        lblNew.text = "Get $40.00 cash Fast"
//        lblNew.textAlignment = .center
//        lblNew.textColor = UIColor.black
//        lblNew.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(lblNew)
//        
//        let widthConstraint = NSLayoutConstraint(item: lblNew, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 300)
//        let heightConstraint = NSLayoutConstraint(item: lblNew, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 100)
//        var constraints = NSLayoutConstraint.constraints(
//            withVisualFormat: "V:[superview]-(<=1)-[label]",
//            options: NSLayoutFormatOptions.alignAllCenterX,
//            metrics: nil,
//            views: ["superview":view, "label":lblNew])
//        
//        view.addConstraints(constraints)
//        
//        // Center vertically
//        constraints = NSLayoutConstraint.constraints(
//            withVisualFormat: "H:[superview]-(<=1)-[label]",
//            options: NSLayoutFormatOptions.alignAllCenterY,
//            metrics: nil,
//            views: ["superview":view, "label":lblNew])
//        
//        view.addConstraints(constraints)
//        view.addConstraints([ widthConstraint, heightConstraint])
//    }



}

