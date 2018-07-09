//
//  ViewController.swift
//  FlashLight
//
//  Created by Minh Mon on 7/9/18.
//  Copyright © 2018 Minh Mon. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    // Controls
    
    @IBOutlet weak var colorPreview: UIView!
    @IBOutlet weak var txtRed: UITextField!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var txtBlue: UITextField!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var txtGreen: UITextField!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var txtAlpha: UITextField!
    @IBOutlet weak var sliderAlpha: UISlider!
    
    // Events
    
    @IBAction func sliderRed_ChangedValue(_ sender: Any) {
        txtRed.text = String(sliderRed.value*255)
        colorPreview.backgroundColor = getColor()
    }
    
    @IBAction func sliderBlue_ChangedValue(_ sender: Any) {
        txtBlue.text = String(sliderBlue.value*255)
        colorPreview.backgroundColor = getColor()
    }
    
    @IBAction func sliderGreen_ChangedValue(_ sender: Any) {
        txtGreen.text = String(sliderGreen.value*255)
        colorPreview.backgroundColor = getColor()
    }
    
    @IBAction func sliderAlpha_ChangedValue(_ sender: Any) {
        txtAlpha.text = String(sliderAlpha.value*255)
        colorPreview.backgroundColor = getColor()
    }
    
    @IBAction func btnOK_Pressed(_ sender: Any) {
        saveData()
    }
    
    
    // Support functions
    
    func saveData() {
        UserDefaults.standard.set(txtRed.text, forKey: "RED")
        UserDefaults.standard.set(txtBlue.text, forKey: "BLUE")
        UserDefaults.standard.set(txtGreen.text, forKey: "GREEN")
        UserDefaults.standard.set(txtAlpha.text, forKey: "ALPHA")
    }
    
    func loadData() {
        txtRed.text = UserDefaults.standard.string(forKey: "RED")
        txtBlue.text = UserDefaults.standard.string(forKey: "BLUE")
        txtGreen.text = UserDefaults.standard.string(forKey: "GREEN")
        txtAlpha.text = UserDefaults.standard.string(forKey: "ALPHA")
        
        sliderRed.value = Float(txtRed.text!)! / 255
        sliderBlue.value = Float(txtBlue.text!)! / 255
        sliderGreen.value = Float(txtGreen.text!)! / 255
        sliderAlpha.value = Float(txtAlpha.text!)! / 255
        colorPreview.backgroundColor = getColor()
    }
    
    func getColor() -> UIColor {
        let red = CGFloat(sliderRed.value)
        let blue = CGFloat(sliderBlue.value)
        let green = CGFloat(sliderGreen.value)
        let alpha = CGFloat(sliderAlpha.value)

        return UIColor.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    // Main
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

