//
//  ViewController.swift
//  GreatReads
//
//  Created by Mia Drago on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UINavigationControllerDelegate{

    @IBOutlet weak var activityIndicator:UIActivityIndicatorView!
    @IBOutlet weak var MainPageTableView: UITableView!
   
    var firstNameList = ["First Name"]
    var lastNameList = ["Last Name"]
    var titleList = ["Book Title"]
    var currentPageList = ["25"]
    var totalPagesList = ["100"]
    var percentageList = [25]
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    MainPageTableView.dataSource = self
    navigationController?.delegate = self
    //activityIndicator.startAnimating()
    
    }
    
    //tableview rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastNameList.count }
 
    //title and subtitles
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "MainPageCell", for: indexPath)
        cell.textLabel?.text = "\(lastNameList[indexPath.row]), \(firstNameList[indexPath.row]): \(titleList[indexPath.row])"
        cell.detailTextLabel?.text = "Page \(currentPageList[indexPath.row])/\(totalPagesList[indexPath.row]) Percentage: \(percentageList[indexPath.row])%"
        cell.contentView.backgroundColor = UIColor.systemPink
        return cell}

    //deleting rows
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       if editingStyle == UITableViewCell.EditingStyle.delete {
           titleList.remove(at: indexPath.row)
           tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic) } }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddViewController
        vc.data = firstNameList[MainPageTableView.indexPathForSelectedRow!.row]
    }
    
    }
    
Hiya Maggie! I hope your AP tests went well. I just wanted to give you a little summary about whats up with the app. Right now I am still trying to send data through the segue. Mr. Brown said to call to a ceratin row and its array then after we append the data to send it back. I have not been  sucessful but maybe you will!! I started code for the indicator view as well. I hope to see you before I graduate however I do not know if that will happen. Ive really enjoyed working with you this past year and I wish you the best in the future :) heres my number if you need anything! 2247750162 
   
    
    
    
    
    //MainPageTableView.reloadData()
    //let userDefaults = UserDefaults.standard
    //let item = ""
    //userDefaults.set(item, forKey: "MyItem")
    

}
