//
//  AddViewController.swift
//  StoreTabs
//
//  Created by Andrew Carras1 on 8/3/17.
//  Copyright © 2017 Andrew Carras1. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for view in self.view.subviews {
            if (view is UITextField) {
                var textField = view as! UITextField
                textField.delegate = self
            }
        }
        
        
        // Do any additional setup after loading the view.
    }


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func finishPressed(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let newTab = Tab(context: context)
        newTab.name = nameField.text!
        
        
    }
    
}
