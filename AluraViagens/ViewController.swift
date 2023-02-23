//
//  ViewController.swift
//  AluraViagens
//
//  Created by Itamar Rocha on 13/12/22.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var viagensTableView: UITableView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
        view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255, blue: 119.0/255.0, alpha: 1)
        // Do any additional setup after loading the view.
    }
    

}

extension ViewController: UITableViewDataSource{
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "viagem  \(indexPath.row)"
        return cell
    }
    
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        //aqui faz o cast pra HomeTableViewHeader
        let headerView =  Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
    
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 300
        
    }
}

