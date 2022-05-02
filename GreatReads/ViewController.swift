//
//  ViewController.swift
//  GreatReads
//
//  Created by Mia Drago on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

   
    @IBOutlet weak var MainPageTableView: UITableView!
   
    var list = ["author", ]
  
    override func viewDidLoad() {
        super.viewDidLoad()

    MainPageTableView.dataSource = self
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainPageCell", for: indexPath)
        cell.textLabel?.text = "\(list[indexPath.row])"
        return cell
    }

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       if editingStyle == UITableViewCell.EditingStyle.delete{
           list.remove(at: indexPath.row)
           tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
}
}
   
}

