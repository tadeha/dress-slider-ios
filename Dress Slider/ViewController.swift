//
//  ViewController.swift
//  Dress Slider
//
//  Created by Tadeh Alexani on 7/11/18.
//  Copyright © 2018 Tadeh Alexani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
  // a bool value to check if we should calculate size for women
  var isWoman = false
  
  // Define Outlets
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  @IBOutlet weak var sizePickerView: UIPickerView!
  
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var genderSwitch: UISwitch!
  
  // Define Variables
  var weightValue: Float = 80.0
  var heightValue: Float = 175.0
  
  @IBAction func hieghtSliderChanged(_ sender: UISlider) {
    // set height value by slider
    heightLabel.text = "\(Int(sender.value))"
    heightValue = sender.value
    
    // calculate suggested size
    caluclateSize(weight: weightValue, height: heightValue, isWoman: isWoman)
  }
  
  @IBAction func weightSliderChanged(_ sender: UISlider) {
    // set weight value by slider
    weightLabel.text = "\(Int(sender.value))"
    weightValue = sender.value
    
    // calculate suggested size
    caluclateSize(weight: weightValue, height: heightValue, isWoman: isWoman)
  }
  
  @IBAction func genderSwitchValueChanged(_ sender: UISwitch) {
    if sender.isOn {
      isWoman = false
    } else {
      isWoman = true
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // calculate suggested size
    caluclateSize(weight: weightValue, height: heightValue, isWoman: isWoman)
  }
  
  func caluclateSize(weight: Float, height: Float, isWoman: Bool) {
    
    if isWoman {
      
    } else {
      
      if (height < 165 && height > 160) || (height == 165 || height == 160) {
        if (weight < 65 && weight > 50) || (weight == 50 || weight == 65) {
          //alert("M");
          sizePickerView.selectRow(2, inComponent: 0, animated: true)
        }
        
        if (weight < 75 && weight > 66) || (weight == 66 || weight == 75) {
          //alert("L");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
      }
      
      if (height < 170 && height > 166) || (height == 166 || height == 170) {
        if (weight < 57 && weight > 50) || ( weight == 50 || weight == 57) {
          //alert("M");
          sizePickerView.selectRow(2, inComponent: 0, animated: true)
        }
        
        if (weight < 60 && weight > 58) || (weight == 58 || weight == 60) {
          //alert("M Jazb");
          sizePickerView.selectRow(2, inComponent: 0, animated: true)
        }
        
        if ( weight < 70 && weight > 61) || (weight == 61 || weight == 70) {
          //alert("L");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
        if (weight < 75 && weight > 71) || (weight == 71 || weight == 75) {
          //alert("L Jazb");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
        if (weight < 80 && weight > 76) || (weight == 76 || weight == 80){
          //alert(" XL ");
          sizePickerView.selectRow(4, inComponent: 0, animated: true)
        }
        
      }
      
      if (height < 175 && height > 171) || (height == 175 || height == 171) {
        if (weight < 55 && weight > 50) || (weight == 50 || weight == 55) {
          //alert("M");
          sizePickerView.selectRow(2, inComponent: 0, animated: true)
        }
        
        if (weight < 60 && weight > 56) || (weight == 56 || weight == 60) {
          //alert("L Azad");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
        if (weight < 65 && weight > 61) || (weight == 61 || weight == 65) {
          //alert("L");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
        if (weight < 70 && weight > 66) || (weight == 66 || weight == 70){
          //alert("L Jazb");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
        if (weight < 84 && weight > 71) || (weight == 71 || weight == 84) {
          //alert(" XL ");
          sizePickerView.selectRow(4, inComponent: 0, animated: true)
        }
        
        if ( weight == 86 || weight == 85) {
          //alert(" XL AZAD ");
          sizePickerView.selectRow(4, inComponent: 0, animated: true)
        }
        
        if (weight < 90 && weight > 87) || (weight == 87 || weight == 90) {
          //alert(" XXL  ");
          sizePickerView.selectRow(5, inComponent: 0, animated: true)
        }
      }
      
      if (height < 180 && height > 176) || (height == 180 || height == 176) {
        if (weight < 57 && weight > 55) || (weight == 55 || weight == 57) {
          //alert("L AZAD");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
        if (weight < 64 && weight > 58) || (weight == 58 || weight == 64) {
          //alert("L");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
        if (weight < 70 && weight > 65) || (weight == 65 || weight == 70) {
          //alert("L Jazb");
          sizePickerView.selectRow(3, inComponent: 0, animated: true)
        }
        
        if (weight < 83 && weight > 71) || (weight == 83 || weight == 71) {
          //alert("XL");
          sizePickerView.selectRow(4, inComponent: 0, animated: true)
        }
        
        if( ( weight == 85 || weight == 84)  ){
          //alert(" XL Jazb ");
          sizePickerView.selectRow(4, inComponent: 0, animated: true)
          
          if( ( weight < 88 && weight > 86 ) || ( weight == 86 || weight == 88)  ){
            //alert(" XXL Azad ");
            sizePickerView.selectRow(5, inComponent: 0, animated: true)
          }
          if( ( weight < 100 && weight > 89 ) || ( weight == 89 || weight == 100)  ){
            //alert(" XXL");
            sizePickerView.selectRow(5, inComponent: 0, animated: true)
          }
          
        }
        
        if (height < 190 && height > 181) || (height == 181 || height == 190) {
          if (weight == 65 || weight == 66) {
            //alert("L AZAD");
            sizePickerView.selectRow(3, inComponent: 0, animated: true)
          }
          
          if( ( weight == 67 || weight == 68)  ){
            //alert("L Jazb");
            sizePickerView.selectRow(3, inComponent: 0, animated: true)
            
          }
          
          if (weight < 80 && weight > 69 ) || ( weight == 69 || weight == 80) {
            //alert("XL");
            sizePickerView.selectRow(4, inComponent: 0, animated: true)
          }
          
          if (weight < 85 && weight > 81 ) || ( weight == 85 || weight == 81) {
            //alert("XXL Azad");
            sizePickerView.selectRow(5, inComponent: 0, animated: true)
          }
          
          if (weight < 100 && weight > 86) || (weight == 86 || weight == 100) {
            //alert(" XXL ");
            sizePickerView.selectRow(5, inComponent: 0, animated: true)
          }
          
        }
        
        
        if (height < 200 && height > 191) || (height == 191 || height == 200) {
          if (weight < 74 && weight > 70) || (weight == 70 || weight == 74) {
            //alert("XL");
            sizePickerView.selectRow(4, inComponent: 0, animated: true)
          }
          
          if (weight < 80 && weight > 75) || (weight == 80 || weight == 75) {
            //alert("XXL Azad");
            sizePickerView.selectRow(5, inComponent: 0, animated: true)
          }
          
          if (weight < 100 && weight > 81) || (weight == 81 || weight == 100) {
            //alert("XXL");
            sizePickerView.selectRow(5, inComponent: 0, animated: true)
          }
        }
      }
      
    }
    
  }
  
  // MARK: - picker view functions
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return 6
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    switch row {
    case 0:
      return "XS"
    case 1:
      return "S"
    case 2:
      return "M"
    case 3:
      return "L"
    case 4:
      return "XL"
    case 5:
      return "2XL"
    default:
      return "-"
    }
  }
  
}

