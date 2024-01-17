//
//  ViewController.swift
//  ABV-Calculator
//
//  Created by Vic on 05.01.2024.
//

import UIKit

final class MainViewController: UITableViewController {
    private var brewList = Brew.getBrewList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? BrewDetailsViewController
        detailsVC?.brew = brewList[indexPath.row]
    }

}

// MARK: - UITableViewDataSource
extension MainViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        brewList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "brewCell", for: indexPath)
        let brew = brewList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = brew.title
        content.secondaryText = String(format: "%.2f", brew.avb) + "%"
        content.image = UIImage(named: brew.brewType)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentBrew = brewList.remove(at: sourceIndexPath.row)
        brewList.insert(currentBrew, at: destinationIndexPath.row)
    }

}
// MARK: - UITableViewDelegate
extension MainViewController {
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
}
