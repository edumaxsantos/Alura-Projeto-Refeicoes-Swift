//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Eduardo Santos on 06/06/21.
//

import UIKit

class AdicionarItensViewController: UIViewController {
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK - IBAction
    @IBAction func adicionarItem(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
