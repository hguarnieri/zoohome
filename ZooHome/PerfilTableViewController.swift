//
//  PerfilTableViewController.swift
//  ZooHome
//
//  Created by Student on 8/16/16.
//  Copyright © 2016 ZooHome.ltda. All rights reserved.
//

import UIKit

class PerfilTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var imagemPerfil: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    var usuario : Usuario?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        usuario = Usuario(nome: "Jhonattan", foto: "user1", telefone: "(16) 99231.1232", regiao: "VilaBrasilia, São Carlos, SP", outrosAnimais: true)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, -20, 0);
        
        self.imagemPerfil.layer.cornerRadius = 100
        self.imagemPerfil.clipsToBounds = true
        self.imagemPerfil.layer.borderWidth = 1.0
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        switch(indexPath.row) {
        case 0:
            cell.textLabel!.text = "Nome"
            cell.detailTextLabel!.text = self.usuario?.nome
        case 1:
            cell.textLabel!.text = "Localidade"
            cell.detailTextLabel!.text = self.usuario?.regiao
        case 2:
            cell.textLabel!.text = "Telefone"
            cell.detailTextLabel!.text = self.usuario?.telefone
        default:
            cell.textLabel!.text = ""
        }
        
        return cell
    }

}
