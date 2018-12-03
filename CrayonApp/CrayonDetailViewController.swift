//
//  CrayonDetailViewController.swift
//  CrayonApp
//
//  Created by Jane Zhu on 12/3/18.
//  Copyright © 2018 Jane Zhu. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {

    @IBOutlet weak var cyaonName: UILabel!
    
    
    
    @IBOutlet weak var redSider: UISlider!
    @IBOutlet weak var blueSider: UISlider!
    @IBOutlet weak var greenSider: UISlider!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var resetButtonOutlet: UIButton!
    @IBOutlet weak var alphaStepper: UIStepper!
    
    public var crayon: Crayon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = crayon.color()
        resetColor( resetButtonOutlet)
        defaultValues()
    }
    
    private func defaultValues() {
        redSider.value = Float(crayon.red/255)
        blueSider.value = Float(crayon.blue/255)
        greenSider.value = Float(crayon.green/255)
        alphaStepper.value = 1
        updateLabels()
    }
    
    private func updateLabels() {
        redLabel.text = String(format:"%3f",redSider.value)
        greenLabel.text = String(format:"%3f",greenSider.value)
        blueLabel.text = String(format:"%3f",blueSider.value)
        alphaLabel.text = String(format:"%3f",alphaStepper.value)
    }
    
    
    private func updateColor (){
        let red = CGFloat(redSider.value)
        let green = CGFloat(greenSider.value)
        let blue = CGFloat(blueSider.value)
        let alpha = CGFloat(alphaStepper.value)
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        view.backgroundColor = color
        updateLabels()
    }
    @IBAction func sliderChanged(_ slider: UISlider) {
    updateColor()
        
    }
    

    @IBAction func stepperChanged(_ stepper: UIStepper) {
        updateColor()
    }
    

    @IBAction func resetColor(_ sender: UIButton) {
        view.backgroundColor = crayon.color()
        defaultValues()
    }
    
    
    
}
