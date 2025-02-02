//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Margarita on 2.2.25..
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colourView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colourView.layer.cornerRadius = 20
        
        setupSlider(redSlider, initialValue: 0, color: .red)
        setupSlider(greenSlider, initialValue: 0, color: .green)
        setupSlider(blueSlider, initialValue: 0, color: .blue)
        
        updateColor()
    }
    
    private func updateColor() {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colourView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        
    }
    
    @IBAction private func redSliderAction() {
        updateColor()
    }
    
    @IBAction private func greenSliderAction() {
        updateColor()
    }
    
    @IBAction private func blueSliderAction() {
        updateColor()
    }
    
    
    private func setupSlider(_ slider: UISlider, initialValue: Float, color: UIColor) {
        
        slider.value = initialValue
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = color
    }
}



