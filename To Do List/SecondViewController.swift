//
//  SecondViewController.swift
//  To Do List
//
//  Created by Alec Mas on 10/13/16.
//  Copyright © 2016 AMP. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var itemTextField: UITextField!
    
    @IBAction func add(_ sender: AnyObject) {
        let itemObject = UserDefaults.standard.object(forKey: "item")
        
        var items:[String]
        
        if let tempItems = itemObject as? [String] {
            items = tempItems
            
            items.append(itemTextField.text!)
            
        } else {
            items = [itemTextField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "item")
        
        itemTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

