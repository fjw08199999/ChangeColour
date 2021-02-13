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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = "紅色"
        greenLabel.text = "綠色"
        blueLabel.text = "藍色"
        alphaLabel.text = "透明度"
        
    }

    @IBAction func redSlider(_ sender: UISlider) {
        
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        
    }
    
    @IBAction func alphaSlider(_ sender: UISlider) {
        
    }
    
    @IBAction func randomButton(_ sender: Any) {
        
    }
    
    @IBAction func setButton(_ sender: Any) {
        
    }
    
}

