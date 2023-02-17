//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Itamar Rocha on 14/12/22.
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
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    func configuraView() {
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
}
