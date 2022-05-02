//
//  AddViewController.swift
//  GreatReads
//
//  Created by Maggie O'Brien on 4/28/22.
//

import UIKit
class AddViewController: UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var totalPagesTextField: UITextField!
    @IBOutlet weak var curerntPageTextField: UITextField!
    @IBOutlet weak var PercentageDoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var Title = titleTextField.text
        var FirstName = firstNameTextField.text
        var LastName = lastNameTextField.text
     
        if let TotalPages = totalPagesTextField.text, let CurrentPage = curerntPageTextField.text
        {
       // let TotalPagesInteger = Int(TotalPages)!
       // let CurrentPageInteger = Int(CurrentPage)!
       // let percentageDone = CurrentPageInteger / TotalPagesInteger
           // PercentageDoneLabel.text = "\(percentageDone * 100)"
        }
  
    }
    
 
    

   

}

