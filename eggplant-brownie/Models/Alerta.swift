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
    func exibe(titulo: String = "Desculpe", mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .cancel)
        alerta.addAction(ok)
        controller.present(alerta, animated: true)
    }
}
