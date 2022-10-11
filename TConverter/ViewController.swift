//
//  ViewController.swift
//  TConverter
//
//  Created by Никита Рудковский on 8/10/2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBOutlet weak var fahrenheitLabel: UILabel!
       
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
}


