//
//  ViewController.swift
//  GreatReads
//
//  Created by Mia Drago on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var totalPagesTextField: UITextField!
    @IBOutlet weak var curerntPageTextField: UITextField!
    
   
    
    
    
    @IBOutlet weak var MainPageTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
   //     if let bookTitle = titleTextField.text {
            
        }
        
        
        
        
        
        MainPageTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }



}

