//
//  DetalheBuscaViewController.swift
//  ZooHome
//
//  Created by Student on 8/16/16.
//  Copyright © 2016 ZooHome.ltda. All rights reserved.
//

import UIKit

class DetalheOfertaViewController: UIViewController {
    
    var oferta: Oferta?
    
    @IBOutlet weak var imagemPerfilOferta: UIImageView!
    @IBOutlet weak var textDescricao: UITextView!
    @IBOutlet weak var labelOutrosAnimais: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    @IBOutlet weak var labelLocalidade: UILabel!
    @IBOutlet weak var labelNome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imagemPerfilOferta.layer.cornerRadius = 75
        self.imagemPerfilOferta.clipsToBounds = true
        self.imagemPerfilOferta.image = UIImage(named: oferta!.usuario!.foto)
        self.textDescricao.text = oferta?.descricao
        self.labelNome.text = oferta?.usuario?.nome
        self.labelPreco.text = oferta?.preco
        self.labelLocalidade.text = oferta?.usuario?.regiao
        self.labelOutrosAnimais.text = oferta!.usuario!.outrosAnimais ? "Sim" : "Não"
    }
    
}
