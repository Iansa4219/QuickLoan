//
//  ScanDriversLicense.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class ScanDriversLicense : UIController{

    override func viewDidLoad() {
        view.backgroundColor = UIColor.blue
        
        super.viewDidLoad()
        textView()
        
    }
    
        func textView() {
            let textView = UITextView(frame: CGRect (x: 120, y: 150, width: 122, height: 122));
            textView.textAlignment = NSTextAlignment.center
            textView.textColor = UIColor.blue
            textView.backgroundColor = UIColor.red
            textView.textColor = UIColor.white
            textView.font = textView.font?.withSize(24)
            textView.text = "Scan Drivers License Class"
            self.view.addSubview(textView)
        }
}

