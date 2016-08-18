//
//  BuscaTableViewController.swift
//  ZooHome
//
//  Created by Student on 8/16/16.
//  Copyright © 2016 ZooHome.ltda. All rights reserved.
//

import UIKit

class BuscaTableViewController: UITableViewController {
    
    @IBOutlet weak var teste: UILabel!
    var animal: Int? = nil
    var min: Int? = nil
    var max: Int? = nil
    var cidade: String? = nil
    
    var clickedOferta: Oferta?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        animal = DetalhesBusca.animal
        min = DetalhesBusca.min
        max = DetalhesBusca.max
        cidade = DetalhesBusca.cidade
        print(cidade)
        print(animal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("BuscaIdentifier", forIndexPath: indexPath) as! BuscaTableViewCell
        
        let oferta = OfertasService.lista[indexPath.row]
        var textoTamanho = ""
        
        switch (oferta.tamanho!) {
        case 0:
            textoTamanho = "Aceita animais pequenos"
        case 1:
            textoTamanho = "Aceita animais médios"
        case 2:
            textoTamanho = "Aceita animais grandes"
        case 3:
            textoTamanho = "Aceita animais de qualquer tamanho"
        default:
            textoTamanho = "Aceita animais"
        }
        
        cell.imagemBusca.layer.cornerRadius = 50
        cell.imagemBusca.clipsToBounds = true
        cell.imagemBusca.image = UIImage(named: oferta.usuario!.foto)
        cell.labelNome.text = oferta.usuario?.nome
        cell.labelPreco.text = oferta.preco
        cell.labelRegiao.text = oferta.usuario?.regiao
        cell.labelTamanho.text = textoTamanho
        
        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.selected = false
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        self.clickedOferta = OfertasService.lista[indexPath.row]
        
        return indexPath
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OfertasService.lista.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "exibirOferta" {
            let nextViewController = segue.destinationViewController as! DetalheOfertaViewController
            nextViewController.oferta = clickedOferta
        }
    }
    
    /*
     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
