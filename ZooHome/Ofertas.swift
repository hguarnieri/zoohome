//
//  DetalheBusca.swift
//  ZooHome
//
//  Created by Student on 8/17/16.
//  Copyright © 2016 ZooHome.ltda. All rights reserved.
//

import Foundation

let OfertasService = Ofertas()

class Ofertas {
    var lista: [Oferta] = []
    
    init() {
        let thiago = Usuario(nome: "Thiago Pereira", foto: "thiago", telefone: "(31) 98523.2312", regiao: "Brasilia, DF", outrosAnimais: false)
        let pedro = Usuario(nome: "Pedro Migliatti", foto: "pedro", telefone: "(16) 3722.1236", regiao: "Araras, SP", outrosAnimais: true)
        let henrique = Usuario(nome: "Henrique Guarnieri", foto: "henrique", telefone: "(16) 99239.1638", regiao: "São Carlos, SP", outrosAnimais: false)
        let oferta1 = Oferta(usuario: henrique, preco: "20.00", tamanho: 1, descricao: "Posso cuidar do seu animalzinho")
        let oferta2 = Oferta(usuario: thiago, preco: "15.00", tamanho: 0, descricao: "Tenho experiência com cachorros. Local próprio.")
        let oferta3 = Oferta(usuario: pedro, preco: "50.00", tamanho: 2, descricao: "Sou cachorrão mesmo. Quem melhor que eu pra cuidar?")
        
        lista.append(oferta1)
        lista.append(oferta2)
        lista.append(oferta3)
    }
}