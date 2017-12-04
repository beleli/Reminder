//
//  ViewController.swift
//  Remainder
//
//  Created by Aloc SP06447 on 01/12/2017.
//  Copyright © 2017 Aloc SP06447. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    //outlet para a tableview
    @IBOutlet weak var tableView: UITableView!

    //outlet para a searchbar
    @IBOutlet weak var searchBar: UISearchBar!
    
    //outlet para o Button
    @IBOutlet weak var addButton: UIButton!
    
    //lazy var remainders: [Remainder] = []
    //lazy var original: [Remainder] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //seta os delegates para o tableview
        tableView.delegate = self
        tableView.dataSource = self
        
        //seta a tableview para edicao
        //tableView.setEditing(true, animated: true)
        
        //seta os delegates para a searchbar
        searchBar.delegate = self
        
        //cria os remainders aleatoriamente
        remainders = generateRemainders(15)
        original = remainders
        
        //ajusta o layout do button
        addButton?.imageView?.image?.withRenderingMode(.alwaysTemplate)
        addButton?.tintColor = UIColor.black
    }

    //executa o callback do formulario porterior
    override func viewWillAppear(_ animated: Bool) {
        searchBar(self.searchBar!, textDidChange: searchBar.text!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return remainders.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "remainderCell", for: indexPath) as! TableViewCell
        
        cell.name.text = remainders[indexPath.row].name
        cell.orientation.text = remainders[indexPath.row].orientation
        cell.enable.isOn = remainders[indexPath.row].enable
        cell.time.text = remainders[indexPath.row].horario.description
        
        return cell
    }
    
    //search bar
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //aplica o filtro e seta no datasource
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            remainders = original
        } else {
            let filtered = original.filter {
                let textToSearch = "\($0.name) \($0.orientation)"
                return textToSearch.range(of: searchText) != nil
            }
            remainders = filtered
        }
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    //remover remainder
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            remainders.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

