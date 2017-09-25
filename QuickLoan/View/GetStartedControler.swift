//
//  GetStartedControler.swift
//  QuickLoan
//
//  Created by Al-Imran Islam on 9/19/17.
//  Copyright © 2017 Televersant.com. All rights reserved.
//

import UIKit

class GetStartedControler : UIController{
    
    @IBOutlet weak var tableView: UITableView!
    let sectionTitle: String = "Page Title"
    let sectionImage: UIImage = #imageLiteral(resourceName: "back-active.png")

    override func viewDidLoad() {
        super.viewDidLoad()
                
        let _ = logoSm(xPos: 0.50, yPos: 0.15, width: 60, height: 56, imageName: "logo-sm.png")
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?{
        
        let view = UIView()
        view.backgroundColor = UIColor.brown
        
        let image = UIImageView(image: sectionImage)
        image.frame = CGRect(x: 5, y: 5, width: 35, height: 35)
        view.addSubview(image)
        
        let label = UILabel()
        label.text = sectionTitle
        label.frame = CGRect(x: 45, y: 5, width: 100, height: 35)
        
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) ->CGFloat{
        return 45
    }
    

}
