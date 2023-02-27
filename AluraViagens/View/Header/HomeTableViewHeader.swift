//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Itamar Rocha on 23/02/23.
//

import UIKit

class HomeTableViewHeader: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBOutlet weak var tituloLabel: UILabel!
    
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var bannerView: UIView!
    
    func configuraView(){
        
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255, blue: 119.0/255.0, alpha: 1)
        
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
    
    }
}
