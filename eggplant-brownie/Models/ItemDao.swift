//
//  ItemDao.swift
//  eggplant-brownie
//
//  Created by Eduardo Santos on 07/06/21.
//

import UIKit

class ItemDao {
    func save(_ itens: [Item]) {
        do {
            let dados = try NSKeyedArchiver.archivedData(withRootObject: itens, requiringSecureCoding: false)
            guard let caminho = recuperaCaminho() else { return }
            try dados.write(to: caminho)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func recupera() -> [Item] {
        guard let caminho = recuperaCaminho() else { return [] }
        
        do {
            let dados = try Data(contentsOf: caminho)
            guard let itensSalvos = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(dados) as? [Item] else { return [] }
            return itensSalvos
            
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
    private func recuperaCaminho() -> URL? {
        guard let diretorio = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return nil
        }
        
        let caminho = diretorio.appendingPathComponent("itens")
        
        return caminho
    }
}
