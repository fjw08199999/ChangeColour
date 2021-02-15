//
//  ViewController.swift
//  ChangeColour
//
//  Created by fred fu on 2021/2/13.
//

import UIKit
import CoreImage.CIFilterBuiltins

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
    @IBOutlet weak var setButton: UIButton!
    @IBOutlet weak var picSizeSegmented: UISegmentedControl!
    
    @IBOutlet weak var filterLabel: UILabel!
    @IBOutlet weak var filterLabelValue: UILabel!
    @IBOutlet weak var filterSliderValue: UISlider!
    
    
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
    
    func choicesPICSet() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picSizeSegmented.setTitle("3:4", forSegmentAt: 0)
        picSizeSegmented.setTitle("16:9", forSegmentAt: 1)
        picSizeSegmented.setTitle("原圖", forSegmentAt: 2)
        
        imageView02.image = UIImage(named: "pic02.png")
        
        displayLabelText(textA: "紅色", textB: "綠色", textC: "藍色", textD: "透明")
        colorLabelValueSet()
        
        randomButtonText.setTitle("隨機", for: .normal)
        setButton.setTitle("拍張照", for:  .normal)
        
        filterLabel.text = "濾鏡"
        filterLabelValue.text = String(format: "%.2f", filterSliderValue.value)
        
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
    
    @IBAction func choiceSize(_ sender: UISegmentedControl) {
        
        let width: CGFloat = 300
        var height: CGFloat = 0
        
        if sender.selectedSegmentIndex == 2 {
            height = width
        } else if sender.selectedSegmentIndex == 1 {
            height = width / 16 * 9
        } else {
            height = width / 4 * 3
        }
        
        imageView02.frame.size = CGSize(width: width, height: height)
        imageView01.frame.size = imageView02.frame.size
    }
    
    @IBAction func filterSlider(_ sender: UISlider) {
        
        let imageViewPIC = UIImage(named: "pic02.png")
        let ciImage = CIImage(image: imageViewPIC!)
        let filter = CIFilter.colorMonochrome()
        
        filter.inputImage = ciImage
        filter.color = CIColor.black
        filter.intensity = sender.value
        
        if let outputCIImage = filter.outputImage {
        
        let filterImage = UIImage(ciImage: outputCIImage)
        
        imageView02.image = filterImage
        }
    }

}
