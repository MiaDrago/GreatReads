//
//  ViewController.swift
//  GreatReads
//
//  Created by Mia Drago on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UINavigationControllerDelegate{
    
    
    @IBOutlet weak var MainPageTableView: UITableView!
    
    var titleList = ["Book Title"]
    var firstNameList = ["First Name"]
    var lastNameList = ["Last Name"]
    var currentPageList = ["25"]
    var totalPagesList = ["100"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MainPageTableView.dataSource = self
        navigationController?.delegate = self
        
        
    }
    
    //MARK: tableview rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastNameList.count }
    
    //MARK: title and subtitles
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainPageCell", for: indexPath)
        cell.textLabel?.text = "\(lastNameList[indexPath.row]), \(firstNameList[indexPath.row]): \(titleList[indexPath.row])"
        cell.detailTextLabel?.text = "Page \(currentPageList[indexPath.row])/\(totalPagesList[indexPath.row])"
        cell.contentView.backgroundColor = UIColor.systemPink
        return cell}
    
    //MARK: deleting rows
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            titleList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic) } }
    
    //MARK: add alert
    @IBAction func addButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Add New Entry", message: "Fill out the textfields with the required information to add a new entrt", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Book Title" }
        alert.addTextField { (textField) in
            textField.placeholder = "Author First Name" }
        alert.addTextField { (textField) in
            textField.placeholder = "Author Last Name" }
        alert.addTextField { (textField) in
            textField.placeholder = "Total Pages in Book" }
        alert.addTextField { (textField) in
            textField.placeholder = "Current Page" }
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        
        alert.addAction(UIAlertAction(title: "Enter", style: .default ) { action in
            let enteredTitle = alert.textFields?[0].text
            let enteredFirstName = alert.textFields?[1].text
            let enteredLastName = alert.textFields?[2].text
            let enteredTotalPages = alert.textFields?[3].text
            let enteredCurrentPage = alert.textFields?[4].text
            
            self.titleList.append(enteredTitle!)
            self.firstNameList.append(enteredFirstName!)
            self.lastNameList.append(enteredLastName!)
            self.currentPageList.append(enteredCurrentPage!)
            self.totalPagesList.append(enteredTotalPages!)
            self.MainPageTableView.reloadData()
            
        } )
        
        
        
        present(alert, animated: true, completion: nil) }
    
    
    
    
}
