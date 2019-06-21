//
//  ViewController.swift
//  BooleanToString
//
//  Created by Lucas Lima Noronha on 21/06/2019.
//  Copyright © 2019 Lucas Lima Noronha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var buttonView: UIButton!
    
    var boolConvert: Bool!

    var data = [String]()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch row
        {
        case 0:
            boolConvert = true
            break
        case 1:
            boolConvert = false
            break
        default:
            boolConvert = false
        }
        
        return data[row]
    }
    
    @objc func verify(sender: UIButton!) {
        
        let alertController = UIAlertController(title: "Result", message: "\(String(boolConvert))", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: { _ in}))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        data = ["true","false"]
        self.pickerView.dataSource = self
        self.pickerView.delegate = self

        buttonView.addTarget(self, action:#selector(self.verify(sender:)), for: .touchUpInside)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

