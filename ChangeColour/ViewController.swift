//
//  ViewController.swift
//  ChangeColour
//
//  Created by fred fu on 2021/2/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var redLableValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    @IBOutlet weak var alphaLabelValue: UILabel!
    
    @IBOutlet weak var redSliderValue: UISlider!
    @IBOutlet weak var greenSliderValue: UISlider!
    @IBOutlet weak var blueSliderValue: UISlider!
    @IBOutlet weak var alphaSliderValue: UISlider!
    
    @IBOutlet weak var imageView01: UIImageView!
    @IBOutlet weak var imageView02: UIImageView!
    
    @IBOutlet weak var randomButtonText: UIButton!
    @IBOutlet weak var setButtonText: UIButton!
    
    func colorSet() {
        
        imageView01.backgroundColor = UIColor(red: CGFloat(redSliderValue.value), green: CGFloat(greenSliderValue.value), blue: CGFloat(blueSliderValue.value), alpha: CGFloat(alphaSliderValue.value))
    }
    
    func colorLabelValueSet() {
        
        redLableValue.text = String(format: "%.2f", redSliderValue.value)
        greenLabelValue.text = String(format: "%.2f", greenSliderValue.value)
        blueLabelValue.text = String(format: "%.2f", blueSliderValue.value)
        alphaLabelValue.text = String(format: "%.2f", alphaSliderValue.value)
    }
    
    func randomNumberRange(numberA: CGFloat, numberB: CGFloat) {

        redSliderValue.value = Float(CGFloat.random(in: numberA...numberB))
        greenSliderValue.value = Float(CGFloat.random(in: numberA...numberB))
        blueSliderValue.value = Float(CGFloat.random(in: numberA...numberB))
        alphaSliderValue.value = Float(CGFloat.random(in: numberA...numberB))
    }
    
    func displayLabelText(textA: String, textB: String, textC: String, textD: String) {
        
        redLabel.text = textA
        greenLabel.text = textB
        blueLabel.text = textC
        alphaLabel.text = textD
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLabelText(textA: "紅色", textB: "綠色", textC: "藍色", textD: "透明")
        colorLabelValueSet()
    }

    @IBAction func changeColorSlider(_ sender: UISlider) {
        
        colorLabelValueSet()
        colorSet()
    }

    @IBAction func randomButton(_ sender: Any) {
        
        randomNumberRange(numberA: 0, numberB: 1)
        colorLabelValueSet()
        colorSet()
    }
    
    @IBAction func setButton(_ sender: Any) {
        
        
        
    }
    
}

