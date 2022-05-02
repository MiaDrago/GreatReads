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
    @IBOutlet weak var currentPageTexrField: UITextField!
    @IBOutlet weak var PercentageDoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController
       
        if let firstNameEntered = firstNameTextField.text,
           let lastNameEntered = lastNameTextField.text,
           let titleEntered = titleTextField.text,
           let totalEntered = totalPagesTextField.text,
           let currentEntered = currentPageTexrField.text {
       
        nvc.firstNameList.append(firstNameEntered)
        nvc.lastNameList.append(lastNameEntered)
        nvc.titleList.append(titleEntered)
        nvc.totalPagesList.append(totalEntered)
        nvc.currentPageList.append(currentEntered)
        
        } else {
            //alert
       }
       
   }
  
 
 
    
    
    }
    

   

    
    
    


