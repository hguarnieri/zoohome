//
//  DetalheBuscaViewController.swift
//  ZooHome
//
//  Created by Student on 8/16/16.
//  Copyright © 2016 ZooHome.ltda. All rights reserved.
//

import UIKit

class DetalheBuscaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var cidade: UITextField!
    
    @IBOutlet weak var min: UITextField!
    @IBOutlet weak var max: UITextField!
    
    var pickerDataSource = ["Cachorro", "Gato", "Passáro", "Roedor"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
        
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Bordered, target: self, action: "back:")
        self.navigationItem.leftBarButtonItem = newBackButton;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    
    
    func back(sender: UIBarButtonItem) {
        DetalhesBusca.animal = pickerView.selectedRowInComponent(0)
        DetalhesBusca.min = Int(self.min.text!)
        DetalhesBusca.max = Int(self.max.text!)
        DetalhesBusca.cidade = self.cidade.text
        
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        // animal =
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
    }
    
    
}
