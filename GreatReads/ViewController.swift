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
    var percentageList = [25.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MainPageTableView.dataSource = self
        navigationController?.delegate = self
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil) }
    
    //MARK: Tableview rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastNameList.count }
    
    
    //MARK: Title and subtitles
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainPageCell", for: indexPath)
        cell.textLabel?.text = "\(lastNameList[indexPath.row]), \(firstNameList[indexPath.row]): \(titleList[indexPath.row])"
        cell.detailTextLabel?.text = "Page \(currentPageList[indexPath.row])/\(totalPagesList[indexPath.row]), \(percentageList[indexPath.row])% done"
        cell.textLabel?.font = UIFont.systemFont(ofSize: 17.0)
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 13)
        return cell}
    
    
    //MARK: Deleting rows
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            titleList.remove(at: indexPath.row)
            firstNameList.remove(at: indexPath.row)
            lastNameList.remove(at: indexPath.row)
            currentPageList.remove(at: indexPath.row)
            totalPagesList.remove(at: indexPath.row)
            percentageList.remove(at: indexPath.row)
            MainPageTableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic) }}
    
    
    //MARK: Add alert
    @IBAction func addButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "ADD NEW ENTRY", message: "Fill out the required information to ADD a new entry", preferredStyle: .alert)
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
            if let enteredTitle = alert.textFields?[0].text, let enteredFirstName = alert.textFields?[1].text, let enteredLastName = alert.textFields?[2].text, let enteredTotalPages = alert.textFields?[3].text, let enteredCurrentPage = alert.textFields?[4].text, let totalDouble = Double(enteredTotalPages), let currentDouble = Double(enteredCurrentPage) {
               
                let percentageDone = currentDouble / totalDouble
                let realPercentageDone = percentageDone * 100
                let realPercentageDoneRounded = realPercentageDone.rounded()
                
                self.titleList.append(enteredTitle)
                self.firstNameList.append(enteredFirstName)
                self.lastNameList.append(enteredLastName)
                self.currentPageList.append(enteredCurrentPage)
                self.totalPagesList.append(enteredTotalPages)
                self.percentageList.append(realPercentageDoneRounded)
                self.MainPageTableView.reloadData() } })
        present(alert, animated: true, completion: nil) }
    

    //MARK: Edit alert
    @IBAction func whenEditPressed(_ sender: UIBarButtonItem) {
        let editAlert = UIAlertController(title: "UPDATE ENTRY", message: "Fill out the information below that corresponds with the entry you'd like to update", preferredStyle: .alert)
        editAlert.addTextField { (textField) in
            textField.placeholder = "Book Title" }
        editAlert.addTextField() { (textField) in
            textField.placeholder = "New Current Page" }
        editAlert.addTextField() { (textField) in
            textField.placeholder = "Total Pages" }
        editAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        editAlert.addAction(UIAlertAction(title: "Enter", style: .default, handler: { action in
            if let enteredTitle = editAlert.textFields?[0].text, let newPage = editAlert.textFields?[1].text, let enteredTotal = editAlert.textFields?[2].text, let currentDouble = Double(newPage), let totalDouble = Double(enteredTitle) {
                if self.titleList.contains(enteredTitle) {
                    self.currentPageList.append(newPage)
                    self.totalPagesList.append(enteredTitle)
                    self.titleList.append(enteredTitle)
                    let newPercentageDone = currentDouble / totalDouble
                    let actualNewPercentage = newPercentageDone * 100
                    let roundedPercentage = actualNewPercentage.rounded()
                    self.percentageList.append(roundedPercentage)
                    self.MainPageTableView.reloadData() }}}))
    present(editAlert, animated: true, completion: nil)}
    
    
    
    
    
    
}
