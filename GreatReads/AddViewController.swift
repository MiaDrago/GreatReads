//
//  AddViewController.swift
//  GreatReads
//
//  Created by Maggie O'Brien on 4/28/22.
//

import UIKit
class AddViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var totalPagesTextField: UITextField!
    @IBOutlet weak var currentPageTexrField: UITextField!
    @IBOutlet weak var PercentageDoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "Save"
        navigationItem.titleView?.tintColor = .systemPink
    }
   
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        if ((viewController as? ViewController) != nil) {
            let firstNameEntered = firstNameTextField.text.self
            let lastNameEntered = lastNameTextField.text.self
            let titleEntered = titleTextField.text.self
            let totalEntered = totalPagesTextField.text.self
            let currentEntered = currentPageTexrField.text.self
            var firstNameList = ["First Name"]
            var lastNameList = ["Last Name"]
            var titleList = ["Book Title"]
            var currentPageList = ["25"]
            var totalPagesList = ["100"]
            var percentageList = [25 
                                  
        vc.firstNameList.append(firstNameEntered)
        vc.lastNameList.append(lastNameEntered)
        vc.titleList.append(titleEntered)
        vc.totalPagesList.append(totalEntered)
        vc.currentPageList.append(currentEntered)
    } else {
        let errorAlert = UIAlertController(title: "Error", message: "Please make sure all areas are completed", preferredStyle: .alert)
            errorAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(errorAlert, animated: true, completion: nil)
               }
            }
        
    
 
   
       
     
       
   
  
 
 
    
    
    
    

   

    
    
    


