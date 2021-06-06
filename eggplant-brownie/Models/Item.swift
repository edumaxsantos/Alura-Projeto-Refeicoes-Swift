//
//  Item.swift
//  eggplant-brownie
//
//  Created by Eduardo Santos on 02/06/21.
//

import UIKit

class Item: NSObject {
    // MARK: - Atributos
    let nome: String
    let calorias: Double
    
    // MARK: - Construtor
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
