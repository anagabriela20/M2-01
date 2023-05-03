//
//  ViewController.swift
//  MiApp5
//
//  Created by Facultad de Contaduría y Administración on 26/04/23.
//

import UIKit

class ContactosVC: UITableViewController {
    
    
    var nombres = ["Juan", "María", "Pedro", "Ana", "Luis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda = tableView.dequeueReusableCell(withIdentifier: "miIdentificadorCelda", for: indexPath) as! MiCelda
            
            let nombre = nombres[indexPath.row % nombres.count]
            celda.texto.text = nombre
            
            return celda
        }

}

