//
//  Usuario.swift
//  ZooHome
//
//  Created by Student on 8/17/16.
//  Copyright © 2016 ZooHome.ltda. All rights reserved.
//

import Foundation

class Usuario {
    
    let nome: String
    let foto: String
    let telefone: String
    let regiao: String
    let outrosAnimais: Bool
    
    init (nome: String, foto: String, telefone: String, regiao: String, outrosAnimais: Bool){
        self.nome = nome
        self.telefone = telefone
        self.regiao = regiao
        self.foto = foto
        self.outrosAnimais = outrosAnimais
    }
}