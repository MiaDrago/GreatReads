//
//  AddViewController.swift
//  GreatReads
//
//  Created by Maggie O'Brien on 4/28/22.
//

import UIKit
class AddViewController: UIViewController, UINavigationControllerDelegate {
    
    var data = ""
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
    
   
    
   //sending data
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        if ((viewController as? ViewController) != nil) {
       
            let firstNameEntered = firstNameTextField.text.self
            let lastNameEntered = lastNameTextField.text.self
            let titleEntered = titleTextField.text.self
            let totalEntered = totalPagesTextField.text.self
            let currentEntered = currentPageTexrField.text.self

        data.firstNameList.append(firstNameEntered)
        data.lastNameList.append(lastNameEntered)
        data.titleList.append(titleEntered)
        data.totalPagesList.append(totalEntered)
        data.currentPageList.append(currentEntered)
  
    } else {
        
        let errorAlert = UIAlertController(title: "Error", message: "Please make sure all areas are completed", preferredStyle: .alert)
            errorAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(errorAlert, animated: true, completion: nil)
}
    
        
        
 
   
       
     
       
   
  
 
 
    
    
    
    

   

    
    
    


