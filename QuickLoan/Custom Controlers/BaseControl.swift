//
//  BaseControl.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class BaseControl : UIView {

    var topLabel : UILabel!
    var bottomButton : UIButton!
    var positionControl: UIView!
    
    var padding : CGFloat = 25;
    var spacing : CGFloat = 5;
    var height : CGFloat = 0;
    var width : CGFloat = 0;
    
    var bottomButtonText = "NEXT"
    
    func setBackground(){
    
    }

}

class GetStartedControl: BaseControl{
    
    var label1 : UILabel!
    var label2 : UILabel!
    var label3 : UILabel!
    var label4 : UILabel!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        bottomButtonText = "START"
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ScanDriversLicenseControl: BaseControl{
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PhoneNumberControl: BaseControl{
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class VerifyControl: BaseControl{
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class DebitCardControl: BaseControl{
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SelectCashControl: BaseControl{
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



