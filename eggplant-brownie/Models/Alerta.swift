//
//  Alerta.swift
//  eggplant-brownie
//
//  Created by Eduardo Santos on 06/06/21.
//

import UIKit

class Alerta {
    let controller: UIViewController
    init(controller: UIViewController) {
        self.controller = controller
    }
    func exibe() {
        let alerta = UIAlertController(title: "Desculpe", message: "não foi possível atualizar a tabela", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .cancel)
        alerta.addAction(ok)
        controller.present(alerta, animated: true)
    }
}
