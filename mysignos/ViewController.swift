//
//  ViewController.swift
//  mysignos
//
//  Created by Gilberto Masetto on 25/11/19.
//  Copyright © 2019 Gilberto Masetto. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSignos()
        createSignificados()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertaController = UIAlertController(title: "Significado do Signo",
                                                 message: significadoSignos[indexPath.row],
                                                 preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertaController.addAction(acaoConfirmar)
        present(alertaController, animated: true, completion: nil )
    }
    
    func createSignos() {
        signos.append("Escorpião")
        signos.append("Aries")
        signos.append("Peixes")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Libra")
        signos.append("Sargitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Virgem")
        signos.append("Leão")
    }
    
    func createSignificados() {
        significadoSignos.append("1 --")
        significadoSignos.append("2 --")
        significadoSignos.append("3 --")
        significadoSignos.append("4 --")
        significadoSignos.append("5 --")
        significadoSignos.append("6 --")
        significadoSignos.append("7 --")
        significadoSignos.append("8 --")
        significadoSignos.append("9 --")
        significadoSignos.append("10 --")
        significadoSignos.append("11 --")
        significadoSignos.append("12 --")
    }
}

