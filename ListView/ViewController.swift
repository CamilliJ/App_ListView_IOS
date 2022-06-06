//
//  ViewController.swift
//  ListView
//
//  Created by COTEMIG on 06/06/22.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let ArrayNome: [String] = ["Gastly", "Ditto", "Psyduck", "Charmander", "Jigglypuff", "Pikachu", "Wingull"]
    let ArrayImagens = ["bolaroxa", "ditto", "duck", "fogo", "giglipuff", "pika", "pombo"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrayNome.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ViewCell
        cell.nomeLabel?.text = ArrayNome[indexPath.row]
        cell.descricaoLabel?.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
        let nomeimagem = ArrayImagens[indexPath.row]
        cell.imagemView?.image = UIImage(named: nomeimagem)
        return cell
    }

   
    
}

