//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Eduardo Santos on 31/05/21.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource {
    
    // MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    var itens = ["Molho de tomate", "Queijo", "Molho apimentado"]
    
    // MARK: - IBOutlets
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let linhaDaTabela = indexPath.row
        celula.textLabel?.text = itens[linhaDaTabela]
        return celula
    }
    
    // MARK: - IBActions
    
    @IBAction func adicionar() {
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }
}

