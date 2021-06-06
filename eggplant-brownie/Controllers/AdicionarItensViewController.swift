//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Eduardo Santos on 06/06/21.
//

import UIKit

class AdicionarItensViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK - IBAction
    @IBAction func adicionarItem(_ sender: Any) {
        guard let nome = nomeTextField.text else {
            return
        }
        guard let caloriasText = caloriasTextField.text, let calorias = Double(caloriasText) else {
            return
        }
        let item = Item(nome: nome, calorias: calorias)
        navigationController?.popViewController(animated: true)
    }
    
}
