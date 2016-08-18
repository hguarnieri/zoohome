//
//  Oferta.swift
//  ZooHome
//
//  Created by Henrique on 17/08/2016.
//  Copyright © 2016 ZooHome.ltda. All rights reserved.
//

import Foundation

class Oferta {
    
    var usuario: Usuario?
    var preco: String?
    var tamanho: Int?
    var descricao: String?
    
    init(usuario: Usuario, preco: String, tamanho: Int, descricao: String) {
        self.usuario = usuario
        self.preco = preco
        self.tamanho = tamanho
        self.descricao = descricao
    }
}
