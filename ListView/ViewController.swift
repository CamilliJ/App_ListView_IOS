//
//  ViewController.swift
//  ListView
//
//  Created by COTEMIG on 06/06/22.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Título Label"
        
        if indexPath.row == 4{
            cell.textLabel?.text = "Texto diferente"
            cell.textLabel?.textColor = UIColor.purple
        }
        
        return cell
    }

   
    
}

