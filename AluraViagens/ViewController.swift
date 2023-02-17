//
//  ViewController.swift
//  AluraViagens
//
//  Created by Itamar Rocha on 13/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var viagensTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
        
        view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        celula.textLabel?.text = "viagem + \(indexPath.row)"
        return celula
    }
    




}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self)?.first as! HomeTableViewHeader
        headerView.configuraView()
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    
    
}


