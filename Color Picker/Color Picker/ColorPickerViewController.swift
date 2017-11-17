//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Chris Jansson on 11/17/17.
//  Copyright © 2017 Chris Jansson. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    let colors = [Color(name: "Red", color: UIColor.red),
                  Color(name: "Orange", color: UIColor.orange),
                  Color(name: "Yellow", color: UIColor.yellow),
                  Color(name: "Green", color: UIColor.green),
                  Color(name: "Blue", color: UIColor.blue),
                  Color(name: "Purple", color: UIColor.purple)]
    var initialColor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        colorPicker.selectedRow(inComponent: initialColor)
        colorLabel.text = colors[initialColor].name
        self.view.backgroundColor = colors[initialColor].color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].name
        self.view.backgroundColor = colors[row].color
    }
}
