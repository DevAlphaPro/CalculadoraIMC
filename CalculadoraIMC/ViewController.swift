//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Yan Alejandro on 03/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pesoText: UITextField!
    @IBOutlet weak var alturaText: UITextField!
    @IBOutlet weak var resultadoIMC: UILabel!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func calcularIMC(_ sender: Any) {
        if let peso = Double(pesoText.text!),
           let altura = Double(alturaText.text!){
            imc = peso / pow(altura, 2)
            resultadoConta()
    }
        func resultadoConta() {
            var resultado: String = ""
            
            switch imc {
                case 0..<16:
                    resultado = "Magreza"
                case 16..<18.5:
                    resultado = "Abaixo do peso"
                case 18.5..<25:
                    resultado = "Peso ideal"
                case 25..<30:
                    resultado = "Sobrepeso"
                default:
                    resultado = "Obesidade"
                }
            
            resultadoIMC.text = "\(Int(imc)): \(resultado)"            
        }
    }
}
