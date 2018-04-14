//
//  ConverterViewController.swift
//  Calculator UI
//
//  Created by Zach on 4/13/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
   
    
    struct ConversionType {
        let label: String?
        let inputUnit: String?
        let outputUnit: String?
    }
    
    let conversions = [
        ConversionType(label: "Fahrenheit to Celcius", inputUnit: "°F", outputUnit: "°C"),
        ConversionType(label: "Celcius to Fahrenheit", inputUnit: "°C", outputUnit: "°F"),
        ConversionType(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
        ConversionType(label: "Kilometers to Miles", inputUnit: "m", outputUnit: "mi"),
        ]
    
    
    @IBAction func converterTapped(_ sender: Any) {
      
        let converterAlertController = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
        
        let fToC = UIAlertAction(title: conversions[0].label, style: .default) { action -> Void in
            self.outputDisplay.text = self.conversions[0].outputUnit
            self.inputDisplay.text = self.conversions[0].inputUnit
        }
        let cToF = UIAlertAction(title: conversions[1].label, style: .default) { action -> Void in
            self.outputDisplay.text = self.conversions[1].outputUnit
            self.inputDisplay.text = self.conversions[1].inputUnit
        }
        let miToKm = UIAlertAction(title: conversions[2].label, style: .default) { action -> Void in
            self.outputDisplay.text = self.conversions[2].outputUnit
            self.inputDisplay.text = self.conversions[2].inputUnit
        }
        let kmToM = UIAlertAction(title: conversions[3].label, style: .default) { action -> Void in
            self.outputDisplay.text = self.conversions[3].outputUnit
            self.inputDisplay.text = self.conversions[3].inputUnit
        }
       
        converterAlertController.addAction(fToC);
        converterAlertController.addAction(cToF);
        converterAlertController.addAction(miToKm);
        converterAlertController.addAction(kmToM);
       
        self.present(converterAlertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        outputDisplay.text = conversions[0].outputUnit
        inputDisplay.text = conversions[0].inputUnit

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
