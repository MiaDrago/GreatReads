//
//  ViewController.swift
//  GreatReads
//
//  Created by Mia Drago on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

   
    @IBOutlet weak var MainPageTableView: UITableView!
   
    var firstNameList = ["First Name"]
    var lastNameList = ["Last Name"]
    var titleList = ["Book Title"]
    var currentPageList = ["25"]
    var totalPagesList = ["100"]
    var percentageList = [25]
  
    override func viewDidLoad() {
        super.viewDidLoad()

    MainPageTableView.dataSource = self }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleList.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "MainPageCell", for: indexPath)
        cell.textLabel?.text = "\(lastNameList[indexPath.row]), \(firstNameList[indexPath.row]): \(titleList[indexPath.row])"
        cell.detailTextLabel?.text = "Page \(currentPageList[indexPath.row])/\(totalPagesList[indexPath.row]) Percentage: \(percentageList[indexPath.row])%"
        return cell }

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       if editingStyle == UITableViewCell.EditingStyle.delete{
           titleList.remove(at: indexPath.row)
           tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic) } }
  
   
    
}
